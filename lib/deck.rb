class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def rank_of_card_at(index)
    @cards[index].rank
  end

  def high_ranking_cards
    high_ranking_cards = []
    @cards.each do |card| #use find_all
      if card.rank >= 11
        high_ranking_cards << card
      end
    end
    return high_ranking_cards
  end

  def percent_high_ranking
    dividend = high_ranking_cards.count
    divisor = @cards.count.to_f
    percent_high_ranking = (dividend / divisor).round(4) * 100
  end

  def remove_card(type)
    if type == :basic
      @cards.shift
    else
      @cards.shift(3)
    end 
  end

  def add_card(card)
    @cards.push(card)
  end
end
