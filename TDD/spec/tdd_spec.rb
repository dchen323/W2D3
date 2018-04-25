require 'rspec'
require 'tdd'


# RSpec.describe Array do
#
#
#   describe "#my_uniq" do
#     it "does not return an array with duplicate elements" do
#       array_tester = [1,2,3,4,4,4,3,2]
#       expect(array_tester.my_uniq).to eq(array_tester.uniq)
#     end
#
#     it "returns empty array when passed empty array" do
#       array_tester = []
#       expect(array_tester.my_uniq).to be_empty
#     end
#
#     it "returns same array if input has no duplicates" do
#       array_tester = [1,2,3,4]
#       expect(array_tester.my_uniq).to eq(array_tester)
#     end
#   end
#
#   describe "#two_sum" do
#     it "finds all pairs of positions where the elements at those positions sum to zero" do
#       sum = [1, 2, -2, -1, 5, -5,6,7,8,3]
#       result = [[0,3],[1,2],[4,5]]
#       expect(sum.two_sum).to eq(result)
#     end
#
#     it "checks that the smaller index is before the bigger index of pairs" do
#       sum = [1,2,-2, -1, 5, -5, 6,7,8,3]
#       result = sum.two_sum
#       expect(result.sort.first).to eq(result.first)
#     end
#
#     it "returns empty array if there are no pairs" do
#       sum = [1,2,3,4]
#       expect(sum.two_sum).to be_empty
#     end
#   end
#
#   describe "#my_transpose" do
#     it "transposes the given array correctly" do
#       array = [[0, 1, 2],[3, 4, 5],[6, 7, 8]]
#       array_transpose = [[0,3,6],[1,4,7],[2,5,8]]
#       expect(array.my_transpose).to eq(array_transpose)
#     end
#
#   end
#
#   describe "#stock_picker" do
#
#
#     it "correctly picks when to buy" do
#       days_with_prices = [4,3,7,9,2,1,5,10,4]
#       expect(days_with_prices.stock_picker.first).to eq(5)
#     end
#
#     it "correctly picks when to sell" do
#       days_with_prices = [4,3,7,9,2,1,5,10,4]
#       expect(days_with_prices.stock_picker.last).to eq(7)
#     end
#
#     it "always buys before selling" do
#       days_with_prices = [4,3,7,9,2,1,5,10,4]
#       expect(days_with_prices.stock_picker.first).to be < days_with_prices.stock_picker.last
#     end
#
#
#   end
#
# end


RSpec.describe TowersofHanoi do
  subject(:towers) {TowersofHanoi.new}

  describe "#initialize" do
    it "initializes with an empty 3x3 grid" do
      expect(towers.grid).to eq(Array.new(3) {[]})
    end

  end

  describe "#set_first_stack" do
    before(:each) do
      towers.set_first_stack
    end
    it "sets initial stack to 1,2,3 to the first array" do
      expect(towers.grid[0]).to eq([3,2,1])
    end
  end

  describe "#move" do
    before(:each) do
      towers.set_first_stack
    end
    it "moves disc correctly from tower to tower " do
      expect(towers.grid[0]).to eq([3,2,1])
      towers.move(0,1)
      expect(towers.grid[0]).to eq([3,2])
      expect(towers.grid[1]).to eq([1])
    end

    it "raises an error if from tower is empty" do
      expect {towers.move(2,1)}.to raise_error("Illegal move")
    end

    it "raises an error if the top of from disc greater than to disc" do
      towers.move(0,1)
      expect {towers.move(0,1)}.to raise_error("Illegal move")
    end
  end
end
