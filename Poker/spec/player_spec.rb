require 'player'
require 'rspec'

RSpec.describe Player do
  subject(:person) {Player.new(10000)}
  describe "#initialize" do
    it "takes an initial amount of money the player has" do
      expect(person.amount).to eq(10000)
    end

    it "initialize an empty hand" do
      expect(person.hand).to be_empty
    end
  end
end
