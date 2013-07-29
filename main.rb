$deck = []

for i in (1..13)
    for j in ["Spades","Hearts","Diamonds","Clubs"]
        $deck << Card.new(j,i)
    end
end