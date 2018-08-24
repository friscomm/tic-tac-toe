class Board
  attr_accessor :board_values

  def initialize
    # @empty_icon = ['1','2','3','4','5','6','7','8','9']
    @board_values = { 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9' }

    # @top_row = make_group(1,2,3)
    # @middle_row = make_group(4,5,6)
    # @bottom_row = make_group(7,8,9)

    @left_column = make_group(1,4,7)
    @middle_column = make_group(2,5,8)
    @right_column = make_group(3,6,9)

    @cross_section_a = make_group(1,5,9)
    @cross_section_b = make_group(3,5,7)
  end

  def player_icon
    ["X", "O"].sample
  end

  def top_row
    make_group(1,2,3)
  end

  def middle_row
    make_group(4,5,6)
  end

  def bottom_row
    make_group(7,8,9)
  end

  def color_array
    ['green','pink'].sample
  end

  def colored_icon
    player_icon.method(color_array).call
  end

  def row_format(args)
    " #{args[0]} | #{args[1]} | #{args[2]}"
  end

  def make_group(first, second, third)
    @board_values.fetch_values(first, second, third)
  end

  def change_board(key, new_value)
    @board_values[key] = new_value
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
