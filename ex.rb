require_relative 'colorize'

def icon
  ["X", "O"].sample
end

def color_array
  ['green','pink'].sample
end

def colored_icon
  icon.method(color_array).call
end

puts "#{colored_icon} | #{colored_icon} | #{colored_icon}"
puts "_________"
puts "#{colored_icon} | #{colored_icon} | #{colored_icon}"
puts "_________"
puts "#{colored_icon} | #{colored_icon} | #{colored_icon}"
