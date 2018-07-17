class Player
    attr_accessor :name, :lives
    def initialize(name, lives)
        @name = name
        @lives = 3
    end

    def decrementLife
        @lives -= 1
    end

    def checkForLife
        @lives
    end
end
