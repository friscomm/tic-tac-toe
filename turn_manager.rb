require_relative 'rules'

class TurnManager

  attr_accessor  :p1, :p2, :board, :active

  def initialize(p1, p2, board, active)
    self.p1 = p1
    self.p2 = p2
    self.board = board
    self.active = active
  end

  def next_turn(turn_number)
    if turn_number < 2
      puts "Enter 'B' at any time to view the game board"
    end

    if turn_number.even?
      single_turn(p1)
    elsif
      single_turn(p2)
    end
  end

  def single_turn(player)
    player.move_prompt
    response = gets.chomp

    if Rules.b?(response)
      board.show_board
      single_turn(player)
    elsif Rules.valid_number?(response)
      if board.cell_filled?(response.to_i)
        puts "That space is taken already.".red
        single_turn(player)
      else
        board.change_board(response.to_i, player.icon)
        board.show_board
      end
    else
      puts "#{response} is an invalid entry.".red
      single_turn(player)
    end
  end

  def continue_game?
    if Rules.game_over?(board.top_row)
      @active = false
      false
    elsif Rules.game_over?(board.middle_row)
      @active = false
      false
    elsif Rules.game_over?(board.bottom_row)
      @active = false
      false
    elsif Rules.game_over?(board.left_column)
      @active = false
      false
    elsif Rules.game_over?(board.middle_column)
      @active = false
      false
    elsif Rules.game_over?(board.right_column)
      @active = false
      false
    elsif Rules.game_over?(board.cross_section_a)
      @active = false
      false
    elsif Rules.game_over?(board.cross_section_b)
      @active = false
      false
    else
      true
    end
  end
end
