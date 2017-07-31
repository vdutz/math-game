class Turn
  @@turn = 0

  def initialize
    @@turn += 1
  end

  def self.which_turn
    @@turn
  end

end