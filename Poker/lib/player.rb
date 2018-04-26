class Player
  attr_accessor :hand, :amount
  def initialize(amount)
    @amount = amount
    @hand = []
  end

  def make_bet
    puts "Do you want to make a raise?(y/n)"
    choice = gets.chomp
    break if choice == "n"
    begin
      if choice == 'y'
        puts "How much do you want to raise by?"
        return gets.chomp.to_i
      end
    rescue MoneyError => err
      puts "Invalid amount"
      retry
    end
  end

  def see
    puts "Do you want to see your hand?(y/n)"
    choice = gets.chomp
    puts @hand if choice == 'y'

  end

  def fold
    puts "Do you want to fold?(y/n)"
    choice = gets.chomp
    choice == 'y' ? true : false
  end

  def discard_cards
    puts "Do you want to make a Discard cards?(y/n)"
    choice = gets.chomp
    if choice == 'y'
      puts "Enter card index:"
      discard_array = gets.chomp.split(",").map(&:to_i)
      discard_array.each do |idx|
        hand.delete_at(idx)
      end
    end
  end
end
