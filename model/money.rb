class Money
  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end

  def equals(object)
    money = object
    amount == money.amount
  end

  def self.dollar(amount)
    Dollar.new(amount)
  end
end
