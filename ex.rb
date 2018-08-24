require_relative 'colorize'
require_relative 'board'
require_relative 'player'
require_relative 'player_turns'

def start_game
  p1_colors = ['green', 'pink', 'yellow', 'yellow' ]
  p2_colors = ['pink', 'light_blue', 'light_blue', 'pink']
  index = [0,1,2,3].sample
  p1 = Player.new(1, 'X', p1_colors[index])
  p2 = Player.new(2, 'O', p2_colors[index])
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
