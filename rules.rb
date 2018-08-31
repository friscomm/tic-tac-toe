class Rules

  def self.b?(item)
      if item.casecmp?('b')
        true
      else
        false
      end
  end

  def self.valid_number?(item)
    if item.length > 1
      false
    elsif item.length == 1 && item.ord > 48 && item.ord < 58
      true
    else
      false
    end
  end

  def self.game_over?(group)
    if all_same_icon?(group, "X")
      puts "Player 1 WINS!"
      true
    elsif all_same_icon?(group, "O")
      puts "Player 2 WINS!"
      true
    else
      false
    end
  end

  def self.all_same_icon?(arr, icon)
    if arr.all? { |item| item.include? icon }
      true
    else
      false
    end
  end
end
