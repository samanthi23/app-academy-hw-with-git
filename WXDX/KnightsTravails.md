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