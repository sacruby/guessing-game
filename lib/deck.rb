class Deck
  def initialize(cards)
    raise "Deck requires an array of cards" unless cards.is_a?(Array)
    @original_deck = cards
    @current_deck = cards.dup
  end

  def shuffle
    @current_deck.shuffle!
  end

  def deal
    @current_deck.pop
  end

  def size
    @current_deck.length
  end

  def reset
    @current_deck = @original_deck.dup
  end
end
