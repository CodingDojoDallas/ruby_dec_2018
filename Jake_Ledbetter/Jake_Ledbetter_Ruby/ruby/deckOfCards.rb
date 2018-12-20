class Card
    attr_accessor :suit, :number
  def initialize(suit, number)
    @suit = suit
    @number = number
  end
 def deck
    puts "#{@number} of #{@suit}"
  end 
end
class Player
  attr_accessor :name, :card1, :card2, :card3, :card4, :card5
  def initailze(name, card1, card2, card3, card4, card5)
    Deck.shuffle!
    @name = name
    @card1 = Deck.pop
    @card2 = Deck.pop
    @card3 = Deck.pop
    @card4 = Deck.pop
    @card5 = Deck.pop
  end
  def draw
    Deck.shuffle!
    card1 = Deck.pop
    card2 = Deck.pop
    card3 = Deck.pop
    card4 = Deck.pop
    card5 = Deck.pop
    puts " #{card1.number} of  #{card1.suit} "
    puts " #{card2.number} of  #{card2.suit} "
    puts " #{card3.number} of  #{card3.suit} "
    puts " #{card4.number} of  #{card4.suit} "
    puts " #{card5.number} of  #{card5.suit} "
    
  end
  

    Deck = []
    for i in 2...14
      Deck.push(Card.new("spades", i))
    end
    for i in 2...14
      Deck.push(Card.new("clover", i))
    end
    for i in 2...14
      Deck.push(Card.new("hearts", i))
    end
    for i in 2...14
      Deck.push(Card.new("Diamonds", i))
    end    

Deck.shuffle!
kobe = Player.new
kobe.draw
end