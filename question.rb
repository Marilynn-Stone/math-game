class Question

  puts "Pick 2 numbers from 1 to 20. Enter your first number:  "
  num1 = gets.chomp.to_i
  puts "Enter your second number: "
  num2 = gets.chomp.to_i

  puts "What does #{num1} plus #{num2} equal?"
  answer = gets.chomp.to_i

  puts answer = num1 + num2 ? "Excellent! You are correct." : "Nope! That is wrong."

end