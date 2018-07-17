class Question
    attr_accessor :player, :actual
    def ask(player)
        @player = player
        @number1 = 1 + rand(20)
        @number2 = 1 + rand(20)
        puts "#{@player}: What does #{@number1} plus #{@number2} equal?"
    end
    def verify(userans)
        actual = @number1 + @number2
        if userans == actual
            true
        else
            false
    end
end
end

