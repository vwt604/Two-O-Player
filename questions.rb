class Questions

  attr_accessor :correct

  def initialize(current_player)
    @num_1 = rand(20)
    @num_2 = rand(20)
    @answer = @num_1 + @num_2

    puts "#{current_player}: What does #{@num_1} plus #{@num_2} equal?"
    ask_question

  end

end