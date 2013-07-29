require_relative 'card.rb'
require_relative 'sorts.rb'

#make a deck
$deck = []
for i in (1..13)
    for j in ["Spades","Hearts","Diamonds","Clubs"]
        $deck << Card.new(j,i)
    end
end

#shuffle the deck
$deck.shuffle!
p 'SHUFFLED DECK:'
$deck.each do |card|
  card.to_s
end
p '==================================='

#sort the deck

# #as implemented by David and Lee
# p 'MERGE SORT:'
# merge_sort_david_lee($deck).each do |card|
#   card.to_s
# end

# #as implemented by Mike Schechter
p 'BUBBLE SORT'
bubble_sort($deck).each do |card|
    p card.to_s
end