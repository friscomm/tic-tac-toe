def can_move?
  if self.casecmp('X') || self.casecmp('O')
    false
  else
    true
  end
end
