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

  def self.dollar(amount, currency)
    Dollar.new(amount, currency)
  end

  def self.franc(amount, currency)
    Franc.new(amount, currency)
  end

  def currency
    @currency
  end
end
