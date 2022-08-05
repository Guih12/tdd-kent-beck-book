require_relative './money'

class Dollar < Money
  def initialize(amount, currency = nil)
    super
  end

  def times(multiplier)
    Dollar.new(amount * multiplier)
  end

  attr_reader :currency
end
