class Game
  @@turn = 0

  attr_accessor :p1, :p2

  def initialize
    @p1 = Player.new
    @p2 = Player.new
  end

  def play
    while (@p1.lives > 0 && @p2.lives > 0)

      turn = Turn.new
      if Turn.which_turn.odd?
        # puts "#{@p1.name}'s turn."
        question = Question.new(@p1)
        question.ask_question
      else
        # puts "#{@p2.name}'s turn."
        question = Question.new(@p2)
        question.ask_question
      end

      if @p1.lives == 0
        puts "#{@p2.name} wins with a score of #{@p2.lives}/3"
        puts "----- GAME OVER -----"
        puts "Good bye!"
      elsif @p2.lives == 0
        puts "#{@p1.name} wins with a score of #{@p1.lives}/3"
        puts "----- GAME OVER -----"
        puts "Good bye!"
      else
        puts "#{@p1.name}: #{@p1.lives}/3 vs. #{@p2.name}: #{@p2.lives}/3"
        puts "----- NEW TURN -----"
      end

    end
  end

end