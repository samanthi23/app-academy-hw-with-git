class Map
    #2d array no idea 
    # implements a map using only arrays
    def initialize
     # [['a', 'b']]
     #@ivar = Array.new(array1) { Array.new(array2) }
     @underlying_array = []
    
    end
    
    def set(key, value)
        # if the first element, then element[0] equals key 
        #passed in
        first = @underlying_array.first { | ele | ele[0] == key }
        if first
            #if first element then array[0][1], values 
            #equal value passed in
            underlying_array[first][1] = value
        else
            # not first element middle elements
            underlying_array.push([key, value])
            # [] pushing a array into an array makes it a 2d array
        end 
        # return value
        value
        
    end

    def get(key)
        # review Data Structures lectures @ Harvard. 
        # returns value array[0][1] if array[0] == key, 
        #array[0][1] == value else returns 
        #nil not found
        underlying_array.each { | ele | returns ele[1] if ele[0] == key }
        nil
    end
    
    def delete(key)
        
    end
    def show 
        
    end 

end 