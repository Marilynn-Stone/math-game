class Game
  attr_reader :player1, :player2
  attr_accessor :current_player

  def initialize
    @player1 = Player.new(1)
    @player2 = Player.new(2)
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

  # Toggle between players. Create new question for current player. Store player response and question answer. Check if answer is correct. Update score.
  def new_turn
    switch_player
    question = Question.new
    @response = question.prompt(@current_player.name)
    @answer = question.answer
    reply
    check_answer
    score   
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

  #Alternate players each turn.
  def switch_player
    if @current_player == @player1
      @current_player = @player2
    else 
      @current_player = @player1
    end
  end

  # Track score. If one player loses all lives, end game.
  # If not begin new turn.
  def score
    puts "Player 1: #{@player1.lives}/3 vs Player 2: #{@player2.lives}/3"
    if @current_player.lives == 0
      switch_player
      puts "#{@current_player.name} wins with a score of #{@current_player.lives}/3"
      puts
      puts "Game Over. Thanks for playing."
    else
      new_turn
    end
  end
  
end