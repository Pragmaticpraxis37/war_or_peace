require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/card'
require_relative '../lib/deck'

class DeckTest < Minitest::Test
  def test_it_exists
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, "Ace", 14)

    cards = [card1, card2, card3]

    deck = Deck.new(cards)
    assert_instance_of Deck, deck
  end

  def test_it_can_read_cards
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, "Ace", 14)

    cards = [card1, card2, card3]

    deck = Deck.new(cards)
    assert_equal cards, deck.cards
  end

  def test_it_can_read_rank_of_card_at_index
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, "Ace", 14)

    cards = [card1, card2, card3]

    deck = Deck.new(cards)
    assert_equal 12, deck.rank_of_card_at(0)
  end

  def test_it_can_create_array_of_high_ranking_cards
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, "Ace", 14)

    cards = [card1, card2, card3]

    deck = Deck.new(cards)
    require "pry"; binding.pry
  end
end