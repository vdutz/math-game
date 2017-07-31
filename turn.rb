class Turn

  @@turn = 0

  def initialize(player1, player2)
    @@turn += 1
    @player1 = player2
    @player2 = player2
  end

  def do_round
    if @@turn.even
    q = Question.new
    puts "What does #{q.n1} plus #{q.n2} equal?"
    answer = gets.chomp
    if answer == q.answer

  end

end