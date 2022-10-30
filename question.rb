class Question
  def initialize(num1, num2, answer)
    @num1 = num1
    @num2 = num2
    @answer = answer
  end

  # Prompt players to enter numbers for question.
  def numbers
    puts "Pick 2 numbers from 1 to 20. Enter your first number:  "
    @num1 = gets.chomp.to_i
    puts "Enter your second number: "
    @num2 = gets.chomp.to_i
  end

# Prompt players to answer question.
  puts "What does #{@num1} plus #{@num2} equal?"
  @answer = gets.chomp.to_i

# Depending on player input, output a response.
  puts @answer = @num1 + @num2 ? "Excellent! You are correct." : "Nope! That is wrong."

end