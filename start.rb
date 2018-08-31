require_relative 'board'
require_relative 'player'
require_relative 'turns'

p1_colors = ['green', 'pink', 'yellow', 'yellow' ]
p2_colors = ['pink', 'light_blue', 'light_blue', 'pink']
index = [0,1,2,3].sample
p1 = Player.new(1, 'X', p1_colors[index])
p2 = Player.new(2, 'O', p2_colors[index])
board = Board.new()
turns = Turns.new(p1, p2, board)

def start_game(turns)
  turn_number = 0
  while turns.continue_game?
    turns.next_turn(turn_number)
    turn_number +=1
    if turn_number == 9
      puts "Tie Game SONNNNNNNNNNN!!!!"
      break
    end
  end

  if !turns.continue_game?
    puts "GAME OVERRRRRRRRR SON!"
  end
end

start_game(turns)
