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

    def inspect
        @value.inspect
    end

    protected # to give node direct access to another node's children

    def _children
        @children
    end
end


#p PolyTreeNode() #=> "hello world"
