class PlayerTurns

  attr_accessor :player_one_icon, :player_two_icon

  def initialize(icon_one, icon_two)
    self.player_one_icon = icon_one
    self.player_two_icon = icon_two
  end

  def move_prompt(player)
    puts "Player#{player} please enter a number 1-9: "
  end

end
