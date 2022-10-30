class Player
  attr_reader :name
  attr_accessor :score

  def initialize(name, score=3)
    @name = name
    @score = score
  end

end

  puts "Player 1 what is your name?"
  player_1_name = gets.chomp
  puts "Player 2 what is your name?"
  player_2_name = gets.chomp

  player_1 = Player.new(player_1_name)
  player_2 = Player.new(player_2_name)
