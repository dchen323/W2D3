require 'card'
require 'rspec'


RSpec.describe Card do

  describe "#initialize" do
    subject(:card) {Card.new(5,:spade)}

    it "initializes with value and suit" do
      expect(card.value).to eq(5)
      expect(card.suit).to eq(:spade)
    end
  end
end
