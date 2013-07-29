#mike s' card class

$deck = []
def make_deck
  for i in (1..13)
    for j in ["Spades", "Hearts", "Diamonds", "Clubs"]
      $deck << Card.new(j,i)
    end
  end
  $deck.each do |card|
    # p card.to_s
  end
end

class Card
    #as implemented by mike s.
  attr_accessor :suit, :number
  attr_reader :type, :card_value

  def initialize(suit, number)
    @suit = suit
    @number = number

    case @suit
    when "Spades"
      @suit_weight = 3
    when "Hearts"
      @suit_weight = 2
    when "Diamonds"
      @suit_weight = 1
    when "Clubs"
      @suit_weight = 0
    end

    case @number
    when 11
      @type = 'Jack'
    when 12
      @type = "Queen"
    when 13
      @type = "King"
    when 1
      @type = "Ace"
    else
      @type = number
    end
    @card_value = (((@number - 1) * 4) + @suit_weight) +1
  end

    def to_s
        return "Your card is the #{@type} of #{@suit}, the #{@card_value}th card."
    end
end

# #defines a Card class

# class Card
#     #as implemented by david and lee
#     attr_accessor :suit, :number, :value
#     attr_reader :type

#     def initialize(suit,number)
#         @suit = suit
#         @number = number

#         case @number
#             when 1
#                 @type = "Ace"
#             when 11
#                 @type = "Jack"
#             when 12
#                 @type = "Queen"
#             when 13
#                 @type = "King"
#             else
#                 @type = @number
#         end

#         #added by David and Lee
#         case @suit
#             when "Spades"
#               @value = @number + 400
#             when "Hearts"
#               @value = @number + 300
#             when "Diamonds"
#               @value = @number + 200
#             when "Clubs"
#               @value = @number + 100
#         end
#     end



#     def to_s
#         puts "Your card is the #{@type} of #{@suit}"
#     end

# end