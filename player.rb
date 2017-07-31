class Player

  @@players = 0

  attr_accessor :name, :lives

  def initialize()
    @@players += 1
    if @@players == 1
      puts "Player 1, what is your name? "
    elsif @@players == 2
      puts "Player 2, what is your name? "
    else
      puts "Error re: number of players."
    end
    @name = gets.chomp
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

end