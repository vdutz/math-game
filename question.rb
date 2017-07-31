class Question
  attr_accessor :n1, :n2, :answer

  def initialize(player)
    @n1 = rand(1..20)
    @n2 = rand(1..20)
    @answer = @n1 + @n2
    @player = player
  end

  def ask_question
    puts "#{@player.name}, what does #{@n1} plus #{@n2} equal?"
    player_answer = gets.chomp
    if player_answer.to_i == @answer
      puts "That's right!"
    else
      puts "Wrong!  You lose a life."
      @player.lives -= 1
    end
  end

end