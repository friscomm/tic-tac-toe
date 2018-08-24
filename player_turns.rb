require_relative 'rules'

class PlayerTurns

  attr_accessor  :p1, :p2, :board, :count

  def initialize(p1, p2, board, count)
    self.p1 = p1
    self.p2 = p2
    self.board = board
    self.count = 0
  end

  def round
    single_turn(p1)
    single_turn(p2)
  end

  def board_message
    #if count < 2 do
      puts "Enter 'B' At Any Time To View Game Board"
    #end
    #count += 1
  end

  def single_turn(player)
    board_message
    player.move_prompt
    response = gets.chomp
    # puts "here is your response! #{response}"
    # puts "here is the type of your response! #{response.class}"
    #NEED TO CLEANLY VALIDATE THE RESPONSE AND HANDLE 'B' VS NUMBER BEING PASSED
    if Rules.new.b?(response)
      board.show_board
      single_turn(player)
    else
      # puts "Error: Wrong Character".red
      # start_game
      board.change_board(response.to_i, player.icon)
      board.show_board
    end
  end

end
