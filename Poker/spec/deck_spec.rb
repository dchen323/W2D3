require 'deck'
require 'rspec'


RSpec.describe Deck do

  describe "#initialize" do
    subject(:deck) {Deck.new}

    it "initializes with 52 cards" do
      expect(deck.grid.length).to eq(52)
    end

    it "checks objects in array to be of Card class" do
      expect(deck.grid[0]).to be_an_instance_of(Card)
    end

    it "checks if shuffled" do
      expect(deck).to receive(:shuffle_cards)
      deck.shuffle_cards
    end
  end
end
