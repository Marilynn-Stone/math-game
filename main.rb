require './player'
#require './questions'
#require './game'

@players = []

puts "Player 1 what is your name?"
player_1_name = gets.chomp
puts "Player 2 what is your name?"
player_2_name = gets.chomp

player_1 = Player.new(player_1_name)
@players << player_1
player_2 = Player.new(player_2_name)
@players << player_2

