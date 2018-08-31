class Board
  attr_accessor :board_values

  def initialize
    @board_values = { 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9' }
  end

  def get_group(first, second, third)
    @board_values.fetch_values(first, second, third)
  end

  def top_row
    get_group(1,2,3)
  end

  def middle_row
    get_group(4,5,6)
  end

  def bottom_row
    get_group(7,8,9)
  end

  def left_column
    get_group(1,4,7)
  end

  def middle_column
    get_group(2,5,8)
  end

  def right_column
    get_group(3,6,9)
  end

  def cross_section_a
    get_group(1,5,9)
  end

  def cross_section_b
    get_group(3,5,7)
  end

  def change_board(key, new_value)
    @board_values[key] = new_value
  end

  def cell_filled?(key)
    if @board_values.fetch(key).include?('X') || @board_values.fetch(key).include?('O')
      true
    else
      false
    end
  end

  def row_format(args)
    " #{args[0]} | #{args[1]} | #{args[2]}"
  end

  def show_board
    puts
    puts row_format(top_row)
    puts "___________"
    puts row_format(middle_row)
    puts "___________"
    puts row_format(bottom_row)
    puts
  end
end
