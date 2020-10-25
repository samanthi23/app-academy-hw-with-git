class Queue
   
   def enqueue(el)
       # add an item
       @ivar = Array.new
   end 
   
   def dequeue
      # remove an item 
      @ivar.pop
   end
   
   def peek
      # look at FIFO, look at item 
      @ivar.first
   end
    
end