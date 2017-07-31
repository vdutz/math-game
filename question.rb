class Question
  attr_accessor :n1, :n2, :answer

  # Instance storing: 2 numbers to be added + answer
  def initialize
    @n1 = rand(1..20)
    @n2 = rand(1..20)
    @answer = @n1 + @n2
  end

end