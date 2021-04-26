require "./Game"
require "./Question"
require "./Player"

# gets.chomp
player1 = Player.new(3);
player2 = Player.new(3);
question = Question.new();
question.create()
puts question.value1
puts question.value2