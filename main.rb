require "./Game"
require "./Question"
require "./Player"

# Set up initial game state
player1 = Player.new(3)
player2 = Player.new(3)
question = Question.new()
game = Game.new()
game.current_player = player1
puts "#############################"
puts "#####  Player 1's turn  #####"
puts "#############################"


while(game.not_over?)
  puts "--------New Question---------"
  question.create()
  question.ask()
  response = gets.chomp

  if !question.isAnswer?(response)
    game.current_player.lives += -1
  end

  if game.not_over?
    if game.current_player == player1
      puts "#############################"
      puts "#####  Player 2's turn  #####"
      puts "#############################"
      game.current_player = player2
    else
      puts "#############################"
      puts "#####  Player 1's turn  #####"
      puts "#############################"
      game.current_player = player1
    end
  end
end

puts "----------Game over----------"
puts "------------Score------------"
puts "- Player 1: #{player1.lives} - Player 2: #{player2.lives} -"
puts "-----------------------------"