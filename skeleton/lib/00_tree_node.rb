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
        
    end
end


#p PolyTreeNode #=> "hello world"
