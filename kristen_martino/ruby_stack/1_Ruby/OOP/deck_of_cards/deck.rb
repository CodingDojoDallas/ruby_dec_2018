require_relative 'card'

class Deck
  def initialize(shuffled = true)
    @suits  = %w[Hearts Clubs Diamonds Spades]
    @titles = %w[Ace Two Three Four Five Six Seven Eight Nine Ten Jack Queen King]
    make_deck
    shuffle if shuffled
  end

  def shuffle
    @cards.shuffle!
    self
  end

  def reset
    make_deck
    self
  end

  def deal
    @cards.pop
  end

  private

  def make_deck
    @cards = Array.new(52)
    # @suits.each {|suit| @titles.each {|title| @cards.push(Card.new(suit,))}
    (0..3).each do |suit_num|
      (1..13).each do |val|
        @cards[(suit_num * 13) + (val - 1)] = Card.new(@suits[suit_num], @titles[val - 1], val)
      end
    end
  end
end
