# frozen_string_literal: true

class ChristmasTree
  TREE_CHARACTER = 'X'
  STAND_CHARACTER = '|'
  STAR_CHARACTER = '*'
  OFFSET_CHARACTER = ' '

  def draw(height, tree_stand, star)
    middle = (height * 2 - 1) / 2
    tree = ""
    #draws the star if star is set to true
    if star
      for x in 1..middle
        tree += OFFSET_CHARACTER
      end
      tree += STAR_CHARACTER + "\n"
    end
    #draws the tree of the specified height
    offset = middle
    width = 0
    for y in 1..height
      for x in 1..offset
        tree += OFFSET_CHARACTER
      end
      for x in 0..width
        tree += TREE_CHARACTER
      end
      width += 2
      offset -= 1
      tree += "\n"
    end
    #draws the tree stand if tree_stand is set to true
    if tree_stand
      for x in 1..middle
        tree += OFFSET_CHARACTER
      end
      tree += STAND_CHARACTER + "\n"
    end
    tree
  end
end
