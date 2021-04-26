class Question 
  def initialize
    @value1
    @value2
    @answer
  end

  def create
    @value1 = Random.rand(20)
    @value2 = Random.rand(20)
    @answer = @value1 + @value2
  end

  def ask
    puts "What is #{@value1} + #{@value2}?"
  end

  def isAnswer?(response)
    @answer == response.to_i
  end
end