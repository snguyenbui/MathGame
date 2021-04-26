class Question 
  attr_accessor :value1, :value2
  def initialize
    @value1
    @value2
    @answer
  end

  def create
    @value1 = Random.rand(20)
    @value2 = Random.rand(20)
  end
end