require_relative 'tic_tac_toe'


class TicTacToeNode
  def initialize(board, next_mover_mark, prev_move_pos = nil)
    @board = board
    @next_mover_mark = next_mover_mark
    @prev_move_pos = prev_move_pos
  end
  
  def board
    @board
  end
  
  def next_mover_mark
    @next_mover_mark
  end
  
  def prev_move_pos
    @prev_move_pos
    
  end

  def losing_node?(evaluator)
  if board.over?
    # if it is a draw
    return board.won? && board.winner != evaluator
  end
  if self.next_mover_mark == evaluator
    self.children.all? { |node| node.losing_node?(evaluator) }
  else
    self.children.any? { |node| node.losing_node?(evaluator) }
  end
  
  
  end

  def winning_node?(evaluator)
    if board.over?
      return board.winner == evaluator
    end
    if self.next_mover_mark == evaluator
      self.children.any? {|node| node.winning_node?(evaluator) }
    else
      self.children.all? {|node| node.winning_node?(evaluator) }
    end
    
    
  end

  # This method generates an array of all moves that can be made after
  # the current move.
  def children
    children = []
    
    (0..2).each do | row_index|
      (0..2).each do |column_index|
        pos = [row_index, column_index]
    
    next unless board.empty?(pos)
    new_board = board.dup
    new_board[pos] = self.next_mover_mark
    next_mover_mark = (self.next_mover_mark == :x ? :o : :x)
    
    
    # next mover mark either :x or :o, if :x then :o else :x
    #new_board[pos]
    # pos is row index and column index self.next_mover_mark
    children << TicTacToeNode.new(new_board, next_mover_mark, pos)
  end
end
    return children
  end
  
end
