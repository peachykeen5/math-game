require './player.rb'
require './question.rb'

class MathGame
    attr_accessor :question, :player1, :player2, :currentPlayer
    def initialize()
        @question = Question.new
        @player1 = Player.new("Player 1", 3)
        @player2 = Player.new('Player 2', 3)
        @currentPlayer = @player1
    end


    def round()
        #Ask question from the user with the Help of Question class
        @question.ask(@currentPlayer.name) 
        #Capturing user's response
        answer = gets.chomp.to_i
        #Verify the answer
        flag = @question.verify(answer)
        if flag 
            puts @currentPlayer.name
            puts "Yes! You are correct"
            puts "P1: #{player1.lives}/3 vs. P2: #{player2.lives}/3"
        else @currentPlayer.decrementLife()
            puts @currentPlayer.name
            puts "Seriously? No!"
            puts "P1: #{player1.lives}/3 vs. P2: #{player2.lives}/3"
            if @currentPlayer.lives == 0
                if @currentPlayer == player1
                    puts "Game over! #{@player2.name} wins with a score of #{player2.lives}"
                else
                    puts "Game over! #{@player1.name} wins with a score of #{player1.lives}"
                end
            end
        end

        #switching users
        if @currentPlayer==@player1
            @currentPlayer = @player2
        else 
            @currentPlayer = @player1
        end
    end
end


#loop through the game while both players still have lives left
game = MathGame.new
while (game.player1.lives>0 && game.player2.lives>0)
    game.round
end

