
require_relative 'spec_helper'

describe Card do
  describe "You can create a Card instance" do

    it "Can be created" do
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          expect(card).must_be_instance_of Card
        end
      end
    end

    it "Raises an ArgumentError for invalid parameters" do
      # To raise an ArgumentError in card.rb
      # raise ArgumentError.new
      expect {Card.new(0, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :clovers)}.must_raise ArgumentError
    end
  end

  describe "Testing to_s" do
    # this structure helps avoid a test failing because another test modified the value

    it "to_s returns a readable String value logically for values 2-10" do
      # Test to ensure that to_s works for cards values 2-10
      # for example:  "2 of diamonds"
      @my_card = Card.new(2, :clubs)
      expect(@my_card.to_s).must_equal '2 of clubs'
    end

    it "to_s returns a readable String value for Ace, Jack, Queen, King" do
      # Test to ensure that to_s works for cards values 1, and 11-13
      # For example: "Queen of hearts"
      @my_card = Card.new(1, :clubs)
      expect(@my_card.to_s).must_equal 'Ace of clubs'
      @my_card = Card.new(11, :diamonds)
      expect(@my_card.to_s).must_equal 'Jack of diamonds'
      @my_card = Card.new(12, :spades)
      expect(@my_card.to_s).must_equal 'Queen of spades'
      @my_card = Card.new(13, :hearts)
      expect(@my_card.to_s).must_equal 'King of hearts'
    end
  end

  describe "Reader methods" do
    before do
      @my_card = Card.new(7, :diamonds)
      @my_card2 = Card.new(12, :hearts)
    end

    it "Can retrieve the value of the card using a `.value`." do
      expect(@my_card.value).must_equal 7
      expect(@my_card2.value).must_equal 12
    end

    it "Can retrieve the value of the card using a `.suit`." do
      expect(@my_card.suit).must_equal :diamonds
      expect(@my_card2.suit).must_equal :hearts
    end
  end

end
