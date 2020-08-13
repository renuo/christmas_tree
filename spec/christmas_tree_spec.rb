# frozen_string_literal: true

require 'christmas_tree'

RSpec.describe ChristmasTree do
  subject(:christmas_tree) { described_class.new.draw(height) }

  let(:height) { 5 }
  let(:tree_characters_count) { christmas_tree.count(described_class::TREE_CHARACTER) }

  # TODO: find a way to improve this test. Currently it just counts the occurences of TREE_CHARACTER
  it 'draws the christmas tree correctly' do
    expect(tree_characters_count).to eq(height ** 2)
  end

  context 'with star and tree stand' do
    # TODO: write a test for the advanced task
  end
end
