require_relative 'colorize'
require_relative 'board'
require_relative 'player'
require_relative 'player_turns'

def start_game
  p1 = Player.new(1, 'X', 'green')
  p2 = Player.new(2, 'O', 'pink')
  board = Board.new()
  turns = PlayerTurns.new(p1, p2, board)
  active = true
  round_number = 0
  while active
    turns.round(round_number)
    active = turns.continue_game?
    round_number +=1
  end
end

start_game
