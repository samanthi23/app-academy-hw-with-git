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
        @children
    end 
    
    def value
        @value
    end 
    
    def parent=(value)
        @parent = value
        # unless @parent == nil
        self
        
    end
    
    def inspect
        @value.inspect
    end
end


#p PolyTreeNode() #=> "hello world"
