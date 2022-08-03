require_relative './money'

class Franc < Money
  def times(multiplier)
    Franc.new(@amount * multiplier)
  end

  def equals(object)
    franc = object
    amount == franc.amount
  end
end
