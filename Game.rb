class Game
  attr_accessor :current_player

  def initialize
    @current_player
  end

  def gameover?
    @current_player.lives == 0
  end
end
