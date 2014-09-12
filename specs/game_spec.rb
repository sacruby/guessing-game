require 'minitest/spec'
require 'minitest/autorun'
require_relative "../lib/game"

describe Game do
  it "can be created with no arguments" do
    Game.new.must_be_instance_of Game
  end
  it "can be created with number of cards in the deck" do
    Game.new(52).must_be_instance_of Game
  end

  it "selects a target card" do
    game = Game.new(1)
    game.pick_card.must_equal 1
  end

  it "returns true if the card is guessed" do
    game = Game.new(1)
    game.pick_card
    game.guess(1).must_equal true
  end

  it "won't return true if the guess is incorrect" do
    game = Game.new(1)
    game.pick_card
    game.guess(2).must_equal false
  end
end
