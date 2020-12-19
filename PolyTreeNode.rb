class PolyTreeNode
   def initialize(value)
      @value = value
      @parent = nil
      @children = []
   end
   
   def parent # parenthesis ? 
       # returns nodes parent
       @parent = parent.first # peek in Queue, also peek at first element in children array, root
       # return first node, or parent node after peeking at first node
       return parent
   end
   
   def children
      #returns an array of children of a node
      #iterate over nodes to return an array of children 
      
   end
   
    
    
end