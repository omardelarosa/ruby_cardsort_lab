#defines a Card class

class Card
    attr_accessor :suit, :number, :value
    attr_reader :type

    def initialize(suit,number)
        @suit = suit
        @number = number

        case @number
            when 1
                @type = "Ace"
            when 11
                @type = "Jack"
            when 12
                @type = "Queen"
            when 13
                @type = "King"
            else
                @type = @number
        end

        #added by David and Lee
        case @suit
            when "Spades"
              @value = @number + 400
            when "Hearts"
              @value = @number + 300
            when "Diamonds"
              @value = @number + 200
            when "Clubs"
              @value = @number + 100
        end
    end



    def to_s
        puts "Your card is the #{@type} of #{@suit}"
    end

end