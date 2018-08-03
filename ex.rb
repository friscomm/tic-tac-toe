require_relative 'colorize'
require_relative 'board'
require_relative 'player'
require_relative 'player_turns'


# def can_move?
#   if self.casecmp('X') || self.casecmp('O')
#     false
#   else
#     true
#   end
# end

def is_b?
    if self.casecmp('b')
      true
    else
      false
    end
end

def start_game
  p1 = Player.new(1, "X")
  p2 = Player.new(2, "O")
  board = Board.new
  puts "Enter 'B' At Any Time To View Game Board"
  p1.move_prompt
  p1_response = gets.chomp
  if p1_response == "b"
    board.show_board
  else
    # puts "Error: Wrong Character".red
    # start_game
    board.change_board(p1_response.to_i, p1.icon)
    board.show_board
  end
  p2.move_prompt
  p2_response = gets.chomp
  if p2_response == "b"
    board.show_board
  else
    # puts "Error: Wrong Character".red
    # start_game
    board.change_board(p2_response.to_i, p2.icon)
    board.show_board
  end
end

start_game
