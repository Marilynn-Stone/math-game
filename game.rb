class Game
  attr_reader :player1, :player2

  def initialize
    @player1 = Player.new(1)
    @player2 = Player.new(2)
  end

  def start
    puts "Welcome to the Math Game!"
    puts "Each player starts with 3 lives. Answer incorrectly and lose a life."
    puts "The game is over when one player loses all 3 lives."
    puts "Good Luck!"
    new_turn
  end

  @current_player = @player_toggle == true ? @player1 : @player2

  def new_turn
    @question = Question.new
    if @current_player = @player1
      puts "Player 1: #{@question.prompt}"
      @question.reply
    else
      puts "Player 2: #{@question.prompt}"
      @question.reply
    end
  end
 
end