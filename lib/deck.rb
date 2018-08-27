
# deck.rb

require_relative 'card'

class Deck
  attr_reader :cards

  def initialize
    @cards = []
    [:hearts, :spades, :clubs, :diamonds].each do |suit|
      (1..13).each do |i|
        @cards << Card.new(i, suit)
      end
    end
  end

  def draw
    card_draw = @cards.pop
    if card_draw
      return card_draw
    else
      raise NoMethodError, "No cards left!"
    end
  end

  def count
    return @cards.length
  end

  def shuffle
    return @cards.shuffle!
  end
end
