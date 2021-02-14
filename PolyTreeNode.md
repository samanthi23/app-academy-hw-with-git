```
class PolyTreeNode
   def initialize(value)
      parent = [root]
   end
   
=begin
#initialize(value) method that sets the value
parents = nil
children = []
=end
      
      
      
=begin      
      @value = value
      # value = [key, value]
      #parent = nil
      parent = nil
      #children = []
      children = []
=end
      
   end 
   
   def parent()
       # returns nodes parent
       parent = parent.first
   end
   
    
    
end
```

ADT
Set 

```
include?
>> 
delete
```

is a set shovel in 3 [3, # then shovel in "hello"]

is a set, unique. [2, "hello"]

iterate over the set to delete it or to do anything to it 

ADT, Set

I've fulfilled all the promises of a Set ( unique keys, etc...)

This array implements a set.

Instead of an array I can use a hashmap to implement a set.

```
{ 3 => true, "hello" => true }
```

setting a value create new

delete from the set

check for inclusion in a set, it's promises

don't have to worry about duplicates that is already taken care of.

dictionary ADT:

get, get a key

set, set a key-value pair

delete methods, delete a key

dictionary ADT is you read a word then it's definition:

key-value pairs

[["hello", "world"], [2,4]]

"hello" => "world"

if you just append it to the end for create or set key-value pairs it is not a set or unique
so needs to, 

same guarantees of behavior and functionality, ADTs.

Stack ADT, (15:34)
can be done with a Stack. Recursion.

Queue, is First In First Out, in a line in NYC.
don't call it push and shift

Reading: 

top-level node holds the root
here it holds /
the children of the nodes holds one level deeper
the lowest level with no children are called leaves 

DFS, stack or recursion
BDF, layer by layer, 

# rsec

```rspec ./spec/```

also ```ruby 00_tree_node.rb```

```

=begin
class PolyTreeNode
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end
end 

    # get parent instance variable
    def parent
        @parent
    end

    # get children instance variable
    def children
        @children
    end

    # get value stored at node
    def value
        @value
    end

    def parent=(node)
        if @parent
            old_parent = @parent
            old_parent.children.delete(self)
        end
        @parent = node
        if !node
            return
        else
            node.children << self
        end
    end

    def add_child(child_node)
        child_node.parent=(self)
    end

    def remove_child(child_node)
        raise 'Bad parent=!' if self.children.none?(child_node)
        child_node.parent=(nil)
    end

    # depth-first-search (stack)
    def dfs(target_value)
        return self if self.value === target_value
        self.children.each do  |child| 
            next_search = child.dfs(target_value)
            # only return if it actually returns correct value
            return next_search if next_search != nil
        end
        nil
    end

    # breadth-first-search (queue)
    def bfs(target_value)
        queue = []
        visited = []
        result = nil
        queue << self
        return self if self.value === target_value
        visited << queue.shift
        queue = self.children
        while !(queue.empty?)
            return result = queue.first if queue.first.value === target_value
            queue.first.children.each {|child| queue << child }
            visited << queue.shift
        end
        result
    end

end
=end
```





