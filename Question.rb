class Question 
  def initialize
    @value1
    @value2
    @answer
    @operand
  end

  def create
    @value1 = Random.rand(20)
    @value2 = Random.rand(20)
    test = Random.rand(5)

    if test == 0
      @operand = :+
    elsif test == 1
      @operand = :-
    elsif test == 2
      @operand = :*
    elsif test == 3
      @operand = :/
    elsif test == 4
      @operand = :%
    end
    
    @answer = @value1.public_send(@operand, @value2)
  end

  def ask
    puts "What is #{@value1} #{@operand} #{@value2}?"
  end

  def isAnswer?(response)
    @answer == response.to_i
  end
end