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

