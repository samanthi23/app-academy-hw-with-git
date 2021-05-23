# instance variables

@fruit

@next_mover_mark

# board object 

class Board

iterate through all positions that are empty? on board object

create a node by duping board and put next_mover_mark in that positions

prev_move_pos to position you just marked

# DFS

is big-O(b*m) not big-O(b^m) in BFS

# TicTacToeNode

new_board, next_mover_mark :x :o, prev_move_pos (0..2) x, (0..2) y.

new board is board.dup duplicated

# next 

can't move here if it's not free

go back to top of loop

