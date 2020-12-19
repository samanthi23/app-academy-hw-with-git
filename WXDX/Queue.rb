class Queue
   
   def initialize
       @ivar = Array.new
   end
   
   #push for enqueue and pop for dequeue
   # queue goes right to left 
   # [[ 3 <= 6 <= 5 ]]
   # 5 is first
   
   def enqueue(el)
       # add an item
       @ivar.push(el)
   end 
   
   def dequeue
      # remove an item that was here first FIFO
      @ivar.pop
   end
   
   def peek
      # look at FIFO, look at item 
      @ivar.first
   end
    
end