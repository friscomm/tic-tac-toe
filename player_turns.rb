require_relative 'rules'

class PlayerTurns

  attr_accessor  :p1, :p2, :board

  def initialize(p1, p2, board)
    self.p1 = p1
    self.p2 = p2
    self.board = board
  end

  def round(round_number)
    if round_number < 1
      turn_with_message(p1)
      turn_with_message(p2)
    else
      single_turn(p1)
      single_turn(p2)
    end
  end

  def board_message
    #if count < 2 do
      puts "Enter 'B' At Any Time To View Game Board"
    #end
    #count += 1
  end

  def turn_with_message(player)
    board_message
    single_turn(player)
  end

  def single_turn(player)
    rules = Rules.new
    player.move_prompt
    response = gets.chomp
    # puts "here is your response! #{response}"
    # puts "here is the type of your response! #{response.class}"
    if !rules.valid?(response)
      puts "#{response} is an invalid entry.".red
      single_turn(player)
    end

    if rules.b?(response)
      board.show_board
      single_turn(player)
    else rules.valid_number?(response)
      if board.cell_filled?(response.to_i)
        puts "That space is taken already.".red
        single_turn(player)
      else
        board.change_board(response.to_i, player.icon)
        board.show_board
      end
    end
  end

  def continue_game?(status=true)
     status
  end

end
