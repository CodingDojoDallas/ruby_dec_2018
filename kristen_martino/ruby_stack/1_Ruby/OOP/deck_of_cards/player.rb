require_relative 'deck'

class Player
  attr_reader :hand

  def initialize(name)
    @name = name
    @hand = []
  end

  def draw(deck)
    @hand.push(deck.deal)
    self
  end

  def draw_hand(deck, hand_size = 5)
    (1..hand_size).each { self.draw(deck) }
    self
  end

  def discard(pos)
    @hand.delete_at(pos)
    self
  end

  def show_hand
    (0...@hand.length).each { |i| @hand[i].show }
  end

end

kristens_deck = Deck.new

kristen = Player.new("Kristen")

kristen.draw_hand(kristens_deck)

puts kristen.hand[0].show
kristen.discard(2)
kristen.draw(kristens_deck)
kristen.show_hand
