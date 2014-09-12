require 'minitest/spec'
require 'minitest/autorun'
require_relative "../lib/deck"

describe Deck do
  it "can not be created with no arguments" do
    proc {Deck.new}.must_raise ArgumentError
  end

  it "can not be created with anything other than an array" do
    err = proc { Deck.new("test") }.must_raise RuntimeError
    err.message.must_equal "Deck requires an array of cards"
  end

  it "can be created with an array" do
    Deck.new([1,2,3]).must_be_instance_of Deck
  end

  it "can deal the top card" do
    deck = Deck.new([1,2,3])
    deck.deal.must_equal 3
  end

  it "can shuffle the cards" do
    deck = Deck.new([1,2,3])
    deck.shuffle
  end

  it "can reveal how many cards are left" do
    deck = Deck.new([1,2,3])
    deck.deal
    deck.size.must_equal 2
  end
end
