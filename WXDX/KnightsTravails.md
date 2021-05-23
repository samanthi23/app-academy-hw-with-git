like chess knight piece L-shaped moves

# recursive backtracking

use PolyTreeNode instances to represent each position

stores the knight's initial position in an instance of your PolyTreeNode class

# a instance method provides functionality to one instance of a class

hello = SayHello.new

hello.from_an_instance

"Hello, from an instance method"

``` 
class SayHello
  def self.from_the_class
    "Hello, from a class method"
  end

  def from_an_instance
    "Hello, from an instance method"
  end
end
```

# 8 possible moves with a knight chess piece

re-consider my previous positions by just returning

because when I return I go back to my previous position 

use BFS for this problem 

nothing works so return

find shortest path for a Chess Knight from a starting position to an end position in a standard 8x8 chess board

from [0,0] to [3,3]

or from [0,0], [2,1]

```
kpf = KnightPathFinder.new([0,0])
```

# backtracking

happens when I return 

and returning brings me back to previous position of Knight piece

also not going to try L-shaped moves that I've already tried

# recursive backtracking

## for each position on 8x8 board
 if row equals size of board
 
 if row == last position [3,3], done 
 
 if row == 4 then you are off the board off the 8x8 board
 
 so success 
 
 is it one solution or many solutions then have solutionsFound variable or and solutionsFound++
 
 return
 
 what would happen?
 
 what variables would help or make it easier
 
 else 
 
 while 
 
 for each position in board colum or row 
 
 to try all possible values so use a loop column < board size
 
   if isSafe(row, col)
 
   place Knight
   
    move to next L-shaped position
    
    findSafeColumn is the recursive call
    
    findSafeColumn(row + 1)
    
    (row + 1) value of row in BFS or DFS square or Node
    
    change the value in the next stackframe in DFS
   
  finally if you get here removeKnight
  
  if you get here we've backtracked
 
 removeKnight(row,col)
 
# template for recursive backtracking
 
```
   void findSolutions(n, other params) {
       if (found a solution) 
          solutionsFound++
          displaySolution();
          if (solutionsFound >= solutionsTarget) 
             System.exit(0);
          return;
        }
        
        for (val = first to last) {
            if(isValid(val, n)) {
                applyValue(val, n);
                findSolutions(n + 1, other params);
                removeValue(val, n);
            }
        }
    }
```

n which cell in the puzzle you are focusing on, like in Sudoku

n which piece in the overall problem am I focused on

for loop is trying all possible values

# The root node of the tree should be the knight's starting position. 

def build_move_tree
   
    self.root_node = PolyTreeNode.new(start_pos)

end

# attr_reader

getter

@start_pos = start_pos 

attr_reader :start_pos

```
kpf = KnightPathFinder.new([0, 0])
kpf.find_path([2, 1]) # => [[0, 0], [2, 1]]
kpf.find_path([3, 3]) # => [[0, 0], [2, 1], [3, 3]]
```

not a setter

# key data structures 

1. isSafe(row,col)
2. placeQueen(row,col)
3. removeQueen(row,col)

try to make isSafe as easy as possible

no scanning the board

instead of a 2d array or matrix for isSafe

add three additional single d arrays

```
private boolean[] colEmpty;
private boolean[] upDiagEmtpy;
private boolean[] downDiagEmpty;
```

place Queen is

queenOnSquare[row][col] = true;

colEmpty[col] = false

upDiagEmtpy[row + col] = false

downDiagEmpty[(boardSize -1) + row - col ]= false

isSafe if column emtpy and up diagonal empty and down diagonal empty

no scanning needed

if all true return true && 

else return false not isSafe

# find_path is dfs

recursive backtracking

# KnightPathFinder::valid_moves(pos)

```
::
```

sets global constant

self.valid_moves(pos)

if not off board valid move, for each MOVES see if off board

```
3.between?(1, 5)               #=> true
6.between?(1, 5)               #=> false
```

# to do 

build my own Rspec for this project or testing

## irb 

```
[11:37:41] ~
// ♥ irb
2.3.3 :001 > class Mariel
2.3.3 :002?>   def drinks_coffee
2.3.3 :003?>    return "Mariel drinks a cup of coffee. ☕️"
2.3.3 :004?>    end
2.3.3 :005?> end
=> :drinks_coffee
2.3.3 :006 > Mariel.new.drinks_coffee
=> "Mariel drinks a cup of coffee. ☕️"
```

## pry

gem install pry

require 'pry'

binding.pry right before like break

# template element

meaning in KnightsTravails

n each cell in chess board

off board solution found, at [7,7] pos end pos 

val [pos] |x_coord, y_coord|

isValid in an L-shaped

applyValue

removeValue

return false not true then remove color from map

if you already have tried the first two colors try the third color

variables

constraints

factory scheduling each station

room scheduling

keeps track of the state of each variable in stack frame

# KnightPathFinder::valid_moves(pos)

KnightPathFinder.valid_moves

except in array add each

# .reject 

reject() public
Returns a new array containing the items in self for which the given block is not true. The ordering of non-rejected elements is maintained.

n % 2 == 0 returns all odd numbers

.each add 

<<

# include?
```
a = [ "a", "b", "c" ]
a.include?("b")   #=> true
a.include?("z")   #=> false
```

# BFS

shortest if at the lowest level so level 2 instead of 4 or 5

one knight move check if it is target(pos) [3,3] if so then return 

that is the shortest path of knight L-shaped move to end pos from start pos

use an array or a linked list or a tree in this case

nodes = [root_node]

push and shift 

enqueue add to queue and shift remove from queue FIFO

if pos == end_pos return [3,3] == [3,3] or [2,1] == [2,1] return, this is the goal state

initial state is empty 8x8 chess board

move Knight in L-shape is the operators

cost?

if initial state is gaol state return itif not apply operators

from [0,0] there are 8 moves or operators, successors, so possible 8 nodes in build_move_tree

if you use a stack to store them or a queue to store them the success

loop

# BFS

next_node = PolyTreeNode.new([new_pos])

current_node

test if you are in that particular case

test initial state

check initial state first node of tree if goal state then done 

else generate all of its successor states

take one state at a time out of its children test it and generate more successors until we find the goal state

Object state

SearchNode predecessors - trace back and see the sequence of actions that led us to the goal state

which operator applied

number of steps to goal state

costfromStart

estimateofRemainingCost

State Space Search Tree

point down or point up in this case pint up so  recursive backtracing or recursion

initial node forms the root of the tree

depth of 1

successors have a dept of 2

data structure that contains the search nodes that we have yet to consider

# current_pos = current_node.value

[[0,0], [2,1]]

next_node = PolyTreeNode.new([0,0])
next_node = PolyTreeNode.new([2,1])

new_move_positions

fully defined functions

and some instance variables

# searcher.addNode([2,1])

current_node.add_child(new_node)

# dfs

end_node is end_pos 

# pseudo code for finding a solution

while(searcher.hasNextNode)
N = next node 

if n is the goal return n

searcher.addNodes(list of N's successors)

# Part 2

dfs

trace back on current path 

have access for nodes in that path

# Queue

addnode

nextnode
.remove

will find the 7th step one before the 12th step one

4 successors only 4 operators 8-puzzle

O(b^d) steps and memory

# dfs end_node value

.reverse

from end node using end_pos

trace-back_path 

.reverse

return values

# .map(&:value)

["11", "21", "5"].map(&:to_i)

returns a new array that turns numbers into integers

returns a new array of values

q for quit until pry(main)>









