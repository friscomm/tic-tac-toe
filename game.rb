require_relative 'board'
require_relative 'player'
require_relative 'turn_manager'

p1_colors = ['green', 'pink', 'yellow', 'yellow' ]
p2_colors = ['pink', 'light_blue', 'light_blue', 'pink']
index = [0,1,2,3].sample
p1 = Player.new(1, 'X', p1_colors[index])
p2 = Player.new(2, 'O', p2_colors[index])
board = Board.new()
turn_manager = TurnManager.new(p1, p2, board, true)

def start_game(turn_manager)
  turn_number = 0
  while turn_manager.continue_game?
    turn_manager.next_turn(turn_number)
    turn_number +=1
    if turn_manager.active && turn_number == 9
      puts "Tie Game"
      break
    end
  end


end

start_game(turn_manager)
