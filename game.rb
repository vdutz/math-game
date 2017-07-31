class Game

  def initialize
    @p1 = Player.new
    @p2 = Player.new
  end

  def game_loop
    while (@p1.score > 0 && @p2.score > 0)
      Turn.new(@p1, @p2)
      Question.new(@p1)

    if @p1.score == 0
      win_message(p1)
    elsif @p2.score == 0
      win_message(p2)
    end

  end

  def win_message(player)
    puts "#{player} wins!"

end