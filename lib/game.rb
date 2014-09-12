require_relative './card'
require_relative './deck'

class Game
  attr_accessor :target_card

  def initialize(deck_size = 10)
    @cards = 1.upto(10).map do |v|
      Card.new(v)
    end
    @deck = Deck.new(@cards)
    @deck.shuffle
  end

  def play(test_guess=nil)
    puts "Playing the guessing game"
    pick_card
    guessed_my_card = false
    while !guessed_my_card do
      print "Pick a number:"
      player_pick = test_guess || gets
      guessed_my_card = guess(player_pick.to_i)
      if guessed_my_card
        puts "You Win!"
      else
        puts "No, try again!"
      end
    end
  end

  def pick_card
    @target_card = @deck.deal
  end

  def guess(number)
    @target_card.matches(number)
  end
end
