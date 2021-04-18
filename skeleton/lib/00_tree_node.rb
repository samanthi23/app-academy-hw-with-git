class PolyTreeNode
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent
        @parent
    end

    def children
        @children.dup
    end

    def value
        @value
    end

    def parent=(parent)
        return if self.parent == parent # handles nil without issue

        # detach
        if self.parent
           self.parent._children.delete(self)
        end

        @parent = parent
        self.parent._children << self unless self.parent.nil?

        self

    end
    
    def add_child(child_node)
       child_node.parent = self
    end
    
    def remove_child(child_node)
       # node is not a child
       # include?(self) not a child not [2,3] maybe 4 or 5 child node
       # some other node's child 4 or 5
       if (child_node) && !self.children.include?(child_node)
           raise "not a child node"
       end 
       
       
       child_node.parent = nil
    end
    
    def dfs(target) 
       return nil if self == nil
       if self.value == target then return self
       else
           # keep traversing the dfs
           self.children.each do |child|
                search_result = child.dfs(target) 
                return search_result unless search_result.nil?
                
                # search_result is nil for nodes 1, 2, 4.
                # pop the last node ( node 4 ) from the stack 
                # if not found in path pop off node with value 4 then 
                # got to node 2's children go to the right side if 
                # not found in node 2's left children
           end
        end 
       nil
    end
    
    def bfs(target)
       queue = [self]
       
       until queue.empty?
        element = queue.shift
        if element.value == target
            return element 
        end
        
        element.children.each do |child|
            queue << child 
        end 
       end
       
       nil
   
    end

    # bfs 34:36 Data Structures

    def inspect
        @value.inspect
    end

    protected # to give node direct access to another node's children

    def _children
        @children
    end
end


#p PolyTreeNode() #=> "hello world"
