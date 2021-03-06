require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'

class CardTest < Minitest::Test
  def setup
    card = Card.new(:diamond, 'Queen', 12)
  end

  def test_it_exists
    card = Card.new(:diamond, 'Queen', 12)

    assert_instance_of Card, card
  end

  def test_it_has_readable_attributes
    card = Card.new(:diamond, 'Queen', 12)

    assert :diamond, card.suit
    assert 'Queen', card.value
    assert 12, card.rank
  end
end
