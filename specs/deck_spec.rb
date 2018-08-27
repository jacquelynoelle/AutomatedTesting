

require_relative 'spec_helper'

describe Deck do
  # Write tests for the Deck class.
  # What should you test?
    # 1.  Expected Behavior
    # 2.  Edge cases
    before do
      @deck = Deck.new
    end

    describe "You can create a Deck instance" do
      it "Can be created" do
        expect(@deck).must_be_instance_of Deck
      end

      it "Has 52 cards" do
        expect(@deck.cards.length).must_equal 52
      end
    end

    describe "Reader methods and Deck has right properties" do
      it "Can retrieve an array of card using a `.cards`." do
        expect(@deck.cards).must_be_instance_of Array
        expect(@deck.cards.last).must_be_instance_of Card
      end
    end

    describe "Draw method" do
      it "Returns a card" do
        expect(@deck.draw).must_be_instance_of Card
      end
      it "Can only draw 52 cards before raising error" do
        expect{53.times {@deck.draw}}.must_raise NoMethodError
      end
    end

    describe "Count method" do
      it "returns the number of cards in the deck" do
        8.times do
          @deck.draw
        end
        expect(@deck.count).must_equal (52-8)
      end
    end
end
