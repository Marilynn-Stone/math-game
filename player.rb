class Player 
  attr_accessor :lives
  attr_reader :name

  def initialize(num)
    @name = "Player #{num.to_s}"
    @lives = 3
  end

  def lose_life
    lives -= 1
  end
end
