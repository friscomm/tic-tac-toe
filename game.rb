def start_game
  puts "Enter 'B' At Any Time To View Game Board"
  puts "Player 1, Enter Your Move: "
  response = gets.chomp
  if response.is_b?
    show_board
  else
    puts "Error: Wrong Character".red
    start_game
  end
end
