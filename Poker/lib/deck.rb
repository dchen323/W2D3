require_relative "card"

class Deck
  SUITS = [:heart,:diamond,:clover,:spade]


  attr_accessor :grid

  def initialize(grid = [])
    @grid = grid
    set_cards
    shuffle_cards
  end

  def set_cards
    SUITS.each do |suit|
      (2..14).each do |n|
        @grid << Card.new(n, suit)
      end
    end

  end

  def shuffle_cards
    self.grid = grid.shuffle!
  end

end



if __FILE__==$0
  Deck.new
end
