class Game
  attr_reader :player1, :player2
  attr_accessor :current_player

  def initialize
    @player1 = Player.new(1)
    @player2 = Player.new(2)
    @toggle = 0
    @current_player
  end

  # Introduce game and start first turn.
  def start
    puts "---Welcome to the Math Game!---"
    puts
    puts "Each player starts with 3 lives."
    puts "Answer incorrectly and lose a life."
    puts "The game is over when one player loses all 3 lives."
    puts "--Good Luck!--"
    puts
    new_turn
  end

  # Alternate players each turn.
  def player_toggle
    if @toggle % 2 == 0 
      @current_player = @player2
    else 
      @current_player = @player1
    end
  end

  # Toggle between players. Create new question for current player. Store player response and question answer. Check if answer is correct. Update score.
  def new_turn
    @toggle += 1
    player_toggle
    question = Question.new
    if @current_player == @player1
      print "Player 1: "
      @response = question.prompt
      @answer = question.answer
      reply
      check_answer
      score
    else
      print "Player 2: "
      @response = question.prompt
      @answer = question.answer
      reply
      check_answer
      score
    end
  end
 
  # If response does not match answer, deduct one life.
  def check_answer
    if @answer != @response
      @current_player.lives -= 1
    end
  end

  #Depending on player input, output a reply.
  def reply
    puts @answer == @response  ? "Excellent! You are correct." : "Nope! That is wrong."
    puts
  end

  # Track score. If one player loses all lives, end game.
  # If not begin new turn.
  def score
    if @player1.lives == 0  
      puts "Player 2 wins with a score of #{@player2.lives}/3"
      puts
      puts "Game Over. Thanks for playing."
    elsif @player2.lives == 0
      puts "Player 1 wins with a score of #{@player1.lives}/3"
      puts
      puts "Game Over. Thanks for playing."
    else
      puts "Player 1: #{@player1.lives}/3 vs Player 2: #{@player2.lives}/3"
      puts
      puts "---New Turn---"
      new_turn
    end
  end

end