require_relative 'tic_tac_toe_node'

class SuperComputerPlayer < ComputerPlayer
  def move(game, mark)
    node = TicTacToeNode.new(game.board, mark)
    possible_nodes = node.children
    node = possible_nodes.find {|node| node.winning_node?(mark) }
    return node.prev_move_pos if node
    
    # no winning node
    # choose one that is not losing_node
  end
end

if __FILE__ == $PROGRAM_NAME
  puts "Play the brilliant computer!"
  hp = HumanPlayer.new("Jeff")
  cp = SuperComputerPlayer.new

  TicTacToe.new(hp, cp).run
end
