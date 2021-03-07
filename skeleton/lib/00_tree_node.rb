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
        return if self.parent == nil # handles nil without issue
        
        
        @parent = value
        return self.parent._children << self unless self.parent.nil?
        
        @parent = value
        # unless @parent == nil
        # self.parent._children << self
        # .delete
        self
        
    end
    
    def inspect
        @value.inspect
    end
end


#p PolyTreeNode() #=> "hello world"
