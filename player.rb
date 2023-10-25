class Player
  attr_reader :name, :score

  def initialize(name)
    @name = name
    @score = 3
  end

  def lose_life
    @score -= 1
  end

  def answer_question
    num1 = rand(1..20)
    num2 = rand(1..20)
    puts "What is #{num1} + #{num2}?"
    answer = gets.chomp.to_i
    answer == num1 + num2
  end

  def is_alive?
    score > 0
  end

  def decrement_life
    lose_life
    puts "You lost a life! Lives left: #{score}"
  end
end