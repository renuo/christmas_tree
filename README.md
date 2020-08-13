# Welcome to the challenge!

Your pull request with your solution is warmly welcome!

We are already looking forward to YOUR solution!

Any questions? Ask them in the "issues" tab.

# Setup

```
git clone git@github.com:renuo/christmas_tree.git
cd christmas_tree
gem install bundler
bundle install
```

# Christmas tree 🌲

Although, it's not christmas yet, we still hope you'll have fun while solving this challenge. 😎

## Basis

Small ruby app, where the tests are partially set up.

## Task

You are to write a function that returns a christmas tree "drawn" with ASCII art. Try to develop test-driven (TDD) with Ruby.

### Input

Your method should accept as its first argument a string, which defines the height of the christmas tree.

### Output

The implemented function should return the christmas tree as a string.

```
ChristmasTree.draw(5)
```

The ouput should then looks as follows: 
```
    X
   XXX
  XXXXX
 XXXXXXX
XXXXXXXXX
```

## Advanced

Slowly the tree takes shape. If you want to go one step further, your task would be to complete the tree by adding a
tree stand and a star on top of the tree.

Accordingly, you could add optional arguments to the function, which would determine whether the tree shall have a
tree stand and/or a star. 

```
ChristmasTree.draw(height: 5, tree_stand: true, star: true)
```

Having both arguments set to `true`, this should output the following:

```
    *
    X
   XXX
  XXXXX
 XXXXXXX
XXXXXXXXX
    |
```

Don't forget to write a test first for this exercise! 👨🏻‍💻 👩🏼‍💻

# Run tests

```
bundle exec rspec
```

## Credits

Challenge from https://ccd-school.de/coding-dojo/function-katas/tannenbaum/, adapted by simon-isler
