Mastermind

Goal:

Write a Mastermind CodeMaker that creates a ordered random code of 4 colors (Red, Blue, Green, Yellow), duplicates are allowed.

The CodeMaker should then take guesses and return a score composed of two parts:

- The number of colors that are correct
- The number of colors that are in the right location

e.g.

code:  RRBB
guess: RBGG

Would yield:
- Number of correct colors: 1
- Number of correct locations: 1

Note that the numbers above must not exceed 4, thus the number of correct colors must not include the count of correct locations.

e.g.

code:  RRRR
guess: RRRR

Would yield:
- Number of correct colors: 0
- Number of correct locations: 4

Also note that duplicates must not be counted twice.

e.g.

code:  RGGG
guess: YRRR

Would yield:
- Number of correct colors: 1
- Number of correct locations: 0
