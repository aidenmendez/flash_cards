class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    cards.length
  end

  def cards_in_category(filter_category)
    cards.find_all do |card|
      card.category == filter_category
    end
  end
end
