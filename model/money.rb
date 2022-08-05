class Money
  attr_reader :amount, :currency

  def initialize(amount, currency = nil)
    @amount = amount
    @currency = currency
  end

  def equals(object)
    money = object
    amount == money.amount
  end

  def times(multiplier)
    Money.new(@amount * multiplier, currency)
  end

  def currency
    @currency
  end
end
