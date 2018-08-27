
# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    raise ArgumentError unless (1..13).include? value
    raise ArgumentError unless [:hearts, :spades, :clubs, :diamonds].include? suit
    @value = value
    @suit = suit
  end

  def to_s
    case value
    when 1
      face_value = "Ace"
    when 11
      face_value = "Jack"
    when 12
      face_value = "Queen"
    when 13
      face_value = "King"
    else
      face_value = value
    end
    return "#{face_value} of #{suit.to_s}"
  end

end
