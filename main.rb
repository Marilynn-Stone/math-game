require './player'
#require './questions'
#require './game'

# Store new game player info.
@players = []

# Get player name input.
puts "Player 1 what is your name?"
player_1_name = gets.chomp
puts "Player 2 what is your name?"
player_2_name = gets.chomp

# Create new player instances and add them to the @players array.
player_1 = Player.new(player_1_name)
@players << player_1
player_2 = Player.new(player_2_name)
@players << player_2

# Start a new game.