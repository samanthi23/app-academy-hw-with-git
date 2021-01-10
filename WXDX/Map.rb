class Map
    # my_map = [[key1, value1], [key2, value2], [key3, value3]]
    def initialize
        @ivar = []
    end
    # following instance methods
    def set(key, value)
        # if boolean statement here true
        # return value
        # key => value
        # if root node
        # if first
        first = @ivar.each { | ele | ele[0] == key } # if first node 
        # key is key in parameter set(KEY, value)
        # if true 
        # set key => value
        # end
        if first 
          @ivar[0][1] = value # unsure, # wrong answer!
        else
            #not first 
            # b=> 2, key is b, value is 2
            @ivar.push([key, value])
        end
        
        # to check
        return value
        
        
    end 
    
    def get(key)
        # index 
       # @ivar.index { | pair | pair[0] == key }
       @ivar.each { | ele | return ele[1] if ele[0] == key }
       return nil
        # 
    end
    
    def delete(key)
        value = get(key)
        @ivar.reject! { |ele| ele[0] == key }
        return value
    end 
    
    def show
        
    end 
end 