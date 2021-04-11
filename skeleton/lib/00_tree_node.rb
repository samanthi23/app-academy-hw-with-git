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
       if self == nil then return
       if self.value == target then return self
       else
           # keep traversing the dfs
           children.each do |child|
                search_result = child.dfs(target) 
                
           end
        end 
       nil
    end
end

    def inspect
        @value.inspect
    end

    protected # to give node direct access to another node's children

    def _children
        @children
    end
end


#p PolyTreeNode() #=> "hello world"
