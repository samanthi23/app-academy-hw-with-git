require_relative '00_tree_node'
require 'pry'


class KnightPathFinder
    attr_reader :start_pos #getter
    
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
    
    def self.valid_moves(pos)
        # KnightPathFinder::valid_moves(pos)
        # if not off board coord_x and coord_y then valid move
        valid_moves = []
        coord_x, coord_y = pos
        p coord_x
        p coord_y
        return pos 
        #KnightPathFinder::valid_moves([2,1])
        #KnightPathFinder::valid_moves([8,9])
       # binding.pry
        
        #return valid_moves

    end
   
    def initialize(start_pos) 
        @start_pos = start_pos
   #     @considered_positions = [start_pos]
        
     #   build_move_tree
        
    end
    
    # find path is a dfs or recursive backtracking
   # def build_move_tree
     #   self.root_node = PolyTreeNode.new(start_pos)
  #  end
    
   # def new_move_positions(pos)
    #    @considered_positions # include?
   # end
    
  # def find_path
     #  kpf.find_path([2, 1]) # => [[0, 0], [2, 1]]
    #kpf.find_path([3, 3]) # => [[0, 0], [2, 1], [3, 3]]
  #  end 
   
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
kpf.build_move_tree()
kpf.valid_moves([2,1])

=begin
if $PROGRAM_NAME == __FILE__
  kpf = KnightPathFinder.new([0, 0])
  #p kpf.find_path([7, 7])
  p kpf.valid_moves([2,1])
end
=end