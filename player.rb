require_relative 'colorize'

class Player

  attr_accessor :number, :icon, :color

  def initialize(number, icon, color)
    self.number = number
    self.icon = icon.method(color).call
  end

  def move_prompt
    puts "Player#{@number} please enter a number 1-9: "
  end

end
