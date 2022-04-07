require './player'
require './turn'


class Game

  def initialize
    @p1 = Player.new('Player 1')
    @p2 = Player.new('Player 2')
    @current_player = @p1
  end

  def start_game
    while @p1.alive? && @p2.alive? do
      turn = Turn.new(@current_player.name)
      turn.new_turn

      if !turn.eval
        
        if turn.current_player == 'Player 2'
          turn_player = @p2
        elsif turn.current_player == 'Player 1'
          turn_player = @p1
        end

        turn_player.lose_life
      end
      show_score()
      next_turn()
    end
    final_score()
  end

  def next_turn
    if @current_player == @p1
      @current_player = @p2
    elsif @current_player == @p2
      @current_player == @p1
    end
  end

  def show_score
    puts "#{@p1.name}: #{@p1.lives}/3 lives VS #{@p2.name}: #{@p2.lives}/3 lives"
  end

  def final_score
    puts '~~~~~~~ GAME OVER ~~~~~~~'
    puts "#{@current_player.name} wins with #{@current_player.lives}/3 lives"
  end

end