class Question

  attr_accessor :x, :y, :answer

  def initialize
    @x = rand(1..100)
    @y = rand(1..100)
    @answer = @x + @y
  end
end