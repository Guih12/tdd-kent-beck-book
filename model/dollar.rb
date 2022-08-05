require_relative './money'

class Dollar < Money
  CURRENCY = 'USD'.freeze

  def times(multiplier)
    Dollar.new(amount * multiplier)
  end

  def currency
    CURRENCY
  end
end
