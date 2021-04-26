require "./Game"
require "./Question"
require "./Player"

# Set up required variables
player1 = Player.new(1)
player2 = Player.new(3)
question = Question.new()
game = Game.new()
game.current_player = player1

while(game.not_over?)
  question.create()
  question.ask()
  response = gets.chomp

  if !question.isAnswer?(response)
    game.current_player.lives += -1
  end

  if game.not_over?
    if game.current_player == player1
      puts "Player 2's turn"
      game.current_player = player2
    else
      puts "Player 1's turn"
      game.current_player = player1
    end
  else
    puts "You lose"
  end
end

puts "Game over"
puts "Score"
puts "Player 1: #{player1.lives} - Player 2: #{player2.lives}"