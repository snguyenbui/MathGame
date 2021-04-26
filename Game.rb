class Game
  attr_accessor :current_player

  def initialize
    @current_player
  end

  def not_over?
    @current_player.lives != 0
  end
end
