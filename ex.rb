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

def start_game
  p1 = Player.new(1, 'X', 'green')
  p2 = Player.new(2, 'O', 'pink')
  board = Board.new()
  turns = PlayerTurns.new(p1, p2, board, 0)
  turns.round
  turns.round
end

start_game
