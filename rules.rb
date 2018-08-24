class Rules

  def b?(item)
      if item.casecmp?('b')
        true
      else
        false
      end
  end

  def valid_number?(item)
    if item.ord > 48 && item.ord < 58
      true
    else
      false
    end
  end

  def valid?(item)
    if b?(item) || valid_number?(item)
      true
    else
      false
    end
  end

  def can_move?
    if self.casecmp?('X') || self.casecmp?('O')
      false
    else
      true
    end
  end

end
