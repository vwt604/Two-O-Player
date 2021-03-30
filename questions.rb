class Questions

  attr_accessor :correct

  def initialize
    @num_1 = rand(20)
    @num_2 = rand(20)
  end

  def answer
    @num_1 + @num_2
  end


  def ask_question(current_player)

    puts "#{current_player.name}: What does #{@num_1} plus #{@num_2} equal?"

    player_answer = gets.chomp

    if player_answer == answer.to_s
      puts "You got it!"
      true

    else
      puts "Seriously? No!"
      false

    end

  end

end