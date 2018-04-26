class Poker
  attr_reader :deck

  def inialize(deck, players = [])
    @deck = deck
    @pot = 0
  end

  def take_turn
    until player.count == 1
      go_around
    end
  end

  def go_around
    players.each do |player|
      player.see
      player.discard_cards
      player.fold
      pot += player.make_bet
    end
  end
end
