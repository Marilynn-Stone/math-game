class Question
  attr_accessor :num1, :num2, :answer

  def initialize
    @num1 = random_num
    @num2 = random_num
    @answer = @num1 + @num2
  end

  def random_num
    rand 1...20
  end

  # Prompt players to answer question.
  def prompt(player_name)
    puts "#{player_name}: What does #{@num1} plus #{@num2} equal?"
    @response = gets.chomp.to_i 
  end

end