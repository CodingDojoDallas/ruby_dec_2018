class Card

    @@suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
    @@titles = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"]

    def initialize (suit_num, val)
        @suit = @@suits[suit_num]
        @title = @@titles[num-1]
    end
    
