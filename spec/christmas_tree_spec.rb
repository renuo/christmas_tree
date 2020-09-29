# frozen_string_literal: true

require 'christmas_tree'

RSpec.describe ChristmasTree do
  subject(:christmas_tree) { described_class.new.draw(height, false, false) }
  subject(:christmas_tree_with_stand_and_star){described_class.new.draw(height, true, true)}

  let(:height) { 5 }
  let(:middle) {(height * 2 - 1) / 2}

  context 'without a stand or a star' do
    it 'draws the correct amount of characters' do
      expect(christmas_tree.count(described_class::TREE_CHARACTER)).to eq(height ** 2)
    end
    it 'each layer has the correct offset' do
      i = 1
      christmas_tree.split("\n").each do |layer|
        if i == middle
          break
        end
        expect(layer[0,middle - i].count(described_class::OFFSET_CHARACTER)).to eq(middle - i)
        i += 1
      end
    end
    it 'each layer has the correct amount of offset characters' do
      i = 0
      christmas_tree.split("\n").each do |layer|
        expect(layer.count(described_class::OFFSET_CHARACTER)).to eq(middle - i)
        i += 1
      end
    end
    it 'each layer has the correct amount of tree characters' do
      i = 1
      christmas_tree.split("\n").each do |layer|
        expect(layer.count(described_class::TREE_CHARACTER)).to eq(i)
        i += 2
      end
    end
    it 'none of the layers has a three character followed by an offset character(there are no gaps)' do
      christmas_tree.split("\n").each do |layer|
        lastChar = ""
        layer.split("").each do |character|
          if lastChar == described_class::TREE_CHARACTER
            expect(character).to be != described_class::OFFSET_CHARACTER
          end
        end
      end
    end
  end

  context 'with star and tree stand' do
    it 'draws the star once' do
      expect(christmas_tree_with_stand_and_star.count(described_class::STAR_CHARACTER)).to eq(1)
    end
    it 'draws the tree stand once' do
      expect(christmas_tree_with_stand_and_star.count(described_class::STAND_CHARACTER)).to eq(1)
    end
    it 'draws the correct offset for the star' do
      expect(christmas_tree_with_stand_and_star[0,middle - 1].count(described_class::OFFSET_CHARACTER)).to eq(middle - 1)
    end
    it 'draws the correct offset for the stand' do
      expect(christmas_tree_with_stand_and_star.split("\n")[height + 1][0,middle - 1].count(described_class::OFFSET_CHARACTER)).to eq(middle - 1)
    end
  end
end
