require './player.rb'
require './questions.rb'


class Game

  attr_accessor :playerturn

  def initialize
    puts "Enter Player 1 Name:"
    print "> "
    player_1 = gets.chomp
    puts "Enter Player 2 Name:"
    print "> "
    player_2 = gets.chomp

    @player_1 = Player.new(player_1)
    @player_2 = Player.new(player_2)
    @current_player = @player_1

    @end = false

  end

  def format_lives(player)
    "#{player.lives}/3"
  end

  def start
    until @end
      turn
    end
  end

  def turn

    puts '----- NEW TURN -----'
    
    question = Questions.new

    # Lose life if answer incorrectly
    if !question.ask_question(@current_player)
      lose_life
    end

    # Changing player
    if @current_player == @player_1
      @current_player = @player_2

    else 
     @current_player = @player_1

    end

    puts "#{@player_1.name}: #{format_lives(@player_1)} vs #{@player_2.name}: #{format_lives(@player_2)}"

  end

  def lose_life
    # Tracks lives
      @current_player.lose_life

      if @current_player.dead
        @end = true
        puts '----- GAME OVER -----'

      end

  end

end
