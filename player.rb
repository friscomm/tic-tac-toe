require_relative 'colorize'

class Player

  attr_accessor :number, :icon

  def initialize(number, icon)
    self.number = number
    self.icon = icon
  end

  def move_prompt
    puts "Player#{@number} please enter a number 1-9: "
  end

end
