require 'minitest/spec'
require 'minitest/autorun'
require_relative "../lib/card"

describe Card do
  it "can be created with no arguments" do
    Card.new.must_be_instance_of Card
  end

  it "can be created with a specific number value" do
    Card.new(1).must_be_instance_of Card
  end

  it "can return the value of its self" do
    card = Card.new(1)
    card.value.must_equal 1
  end

  it "matches with same value" do
    card = Card.new(1)
    card.matches(1).must_equal true
  end

  it "won't match with different value" do
    card = Card.new(1)
    card.matches(2).wont_equal true
  end
end
