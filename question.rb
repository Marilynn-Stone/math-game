require_relative 'player'

class Question
  attr_accessor :num1, :num2, :answer

  def initialize
    @num1 = random_num
    @num2 = random_num
    @answer = generate_answer
  end

  def random_num
    rand 1...20
  end

  def generate_answer
    @num1 + @num2
  end

  # Prompt players to answer question.
  def prompt
    puts "What does #{@num1} plus #{@num2} equal?"
    @response = gets.chomp.to_i 
  end

end