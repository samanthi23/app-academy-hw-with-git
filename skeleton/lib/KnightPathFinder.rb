require_relative '00_tree_node'


class KnightPathFinder
    attr_reader @start_pos #getter
    
    MOVES = [
        [-1,2],
        [2,1],
        [1,-2],
        [1,2],
        [-1,-2],
        [-1,2],
        [-2,-1],
        [-2,1]
    ]
   
    def initialize(start_pos) 
        @start_pos = start_pos
        @considered_positions = start_pos
        
        build_move_tree
        
    end
  
   #def find_path
      # kpf.find_path([2, 1]) # => [[0, 0], [2, 1]]
    # kpf.find_path([3, 3]) # => [[0, 0], [2, 1], [3, 3]]
  # end 
   
   # for each position on 8x8 board
   # if isSafe(row, col)
   # place Knight
   
   # move to next L-shaped position
   # findSafe
   
   # removeKnight(row,col)
end

kpf = KnightPathFinder.new([0, 0])

kpf.find_path([2, 1]) # => [[0, 0], [2, 1]]
kpf.find_path([3, 3]) # => [[0, 0], [2, 1], [3, 3]]