class Stack
    def initialize
       # create  ivar to store stack here
       @ivar = Array.new
    end
    
    def push(el)
      # adds to stack  
      @ivar.push(el)
      self
    end
    
    def pop
       # removes one element from stack 
       @ivar.pop
    end
    
    def peek
       # returns but doesn't remove the top element from stack 
       @ivar.last
    end
    
end # end stack class