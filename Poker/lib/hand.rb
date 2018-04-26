class Hand
  def initialize(hand_of_cards)
    @hand_of_cards = hand_of_cards
  end

  def create_hash
    card_hash = Hash.new
  end

  def hand_value
    sum = 0
    case repeats?
    when 0
      @hand_of_cards.each do |card|
        sum += card.value
      end
    when 1
      @hand_of_cards.each do |card|
        if @hand_of_cards.count(card) > 1
          sum += card.value * 20
        else
          sum += card.value
        end
      end
    when 2
      @hand_of_cards.each do |card|
        if @hand_of_cards.count(card) > 1
          sum += card.value * 30
        else
          sum += card.value
        end
    end
  when 3
    @hand_of_cards.each do |card|
      if @hand_of_cards.count(card) > 1
        sum += card.value * 40
      else
        sum += card.value
      end
  end
  end
end
