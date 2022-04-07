require './question'

class Turn

  attr_accessor :curent_player, :question, :eval

  def initialize name
    @current_player = name
    @question = Question.new
    @eval = true
  end

  def new_turn

    puts '~~~~~~~~ NEW TURN ~~~~~~~~'
    puts '#{@current_player}: What does #{question.x} + #{@question.y} equal'
    player_answer = gets.chomp.to_i

    if (@question.answer) == player_answer
      puts 'Correct!'
      @eval = true
    else
      puts 'INCORRECT! You lose a life'
      @eval = false
    end
  
  end

end