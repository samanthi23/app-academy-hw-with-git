```
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
# |ele| 
# pair_index = underlying_array.index { |pair| pair[0] == key }
#a = [ "a", "b", "c" ]
#a.index("b")              #=> 1
#a.index("z")              #=> nil
#a.index {|x| x == "b"}    #=> 1
    
    
    
    # ruby docs returns index of 
        # review Data Structures lectures @ Harvard. 
        # returns value array[0][1] if array[0] == key, 
        #array[0][1] == value else returns 
        #nil not found
        underlying_array.each { | ele | returns ele[1] if ele[0] == key }
        nil
    end
    
    def delete(key)
        # value get(key)
        value = get(key)
        # reject where in a block the value is not true
        underlying_array.reject { | ele | ele[0] == key }
        # return value that is deleted
        value
    end
    
    def show 
        deep_dup(underlying_array)
    end 
    
    private
    
    # attr_accessor creates these methods for you, read-only
    attr_reader :underlying_array

    def deep_dup(arr)
        # if arr is an Array deep_dup "recursion" else return element
        arr.map { | ele | ele.is_a?(Array) ? deep_dup(ele) : ele }
        
    end 

end 
```

find the index 0, 1, 2 for three key-value pairs
return the value if the key is there
if no key return nil

```
def get(key)

 underlying_array.each { | pair | return pair[1] if pair[0] == key }
 nil # if not found

end
```

# Map is also called a dictionary

3 public methods get, set, delete

## delete a key

```
arr = [1, 2, 3, 4, 5, 6]
arr.reject { |a| a < 3 }     #=> [3, 4, 5, 6]
.reject!
```

value = get(key)
if ele[0] == key return value 

# A Map

is a set of key value pairs

mapping of keys to values

hashmap 

or you can use an array for a Map ADT.

## Array

nest key-value pairs in a 2nd array

```
[["hello", "world"], [2,4]]
```

```
hello => world
2 => 4
```

Unique keys!!

``` 
def show

end

private

end
```

private methods of a dog class compared to animal class

different authors for super and child classes or objects, if other is able to 
change private fields then my code would break so private fields are
only changeable in that class for example the dog class 

get around that by using the methods, that only the Class itself
or the sub-Classes to use

```
def show
    deep_dup(underlying_array)
  end

  private

  attr_reader :underlying_array
  
  def deep_dup(arr)
    arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
  end  
```

## .map

returns a new array with results of running the block {} once

```
(1..4).map { |i| i*i }      #=> [1, 4, 9, 16]
```




