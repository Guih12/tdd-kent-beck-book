require_relative './money'

class Franc < Money
  def times(multiplier)
    Franc.new(@amount * multiplier)
  end

  def currency
    "CHF"
  end
end
