class Card
  attr_accessor :value

  def initialize(val=0)
    self.value = val
  end

  def matches(v)
    value == v
  end
end
