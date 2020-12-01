require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/card'
require_relative '../lib/deck'
require_relative '../lib/player'

class PlayerTest < Minitest::Test
  def setup
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, "Ace", 14)

    cards = [card1, card2, card3]

    deck = Deck.new(cards)

    player = Player.new('Clarisa', deck)
  end

  def test_it_exists
  end

  def test_it_can_read_name
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, "Ace", 14)

    cards = [card1, card2, card3]

    deck = Deck.new(cards)

    player = Player.new('Clarisa', deck)

    assert_equal 'Clarisa', player.name
  end

  def test_it_can_read_lost?
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, "Ace", 14)

    cards = [card1, card2, card3]

    deck = Deck.new(cards)

    player = Player.new('Clarisa', deck)

    assert_equal false, player.lost
  end
end
