require "./lib/deck"
require "./lib/round"
require "./lib/card"
require "Minitest/autorun"
require "Minitest/pride"

class RoundTest < Minitest::Test
  def setup
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    deck = Deck.new([card_1, card_2, card_3])
  end

  def test_it_exists
    round = Round.new(deck)
  end
end