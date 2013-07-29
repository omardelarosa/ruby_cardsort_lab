#defines a Card class

class Card
    attr_accessor :suit, :number
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
    end

    def to_s
        puts "Your card is the #{@type} of #{@suit}"
    end

end