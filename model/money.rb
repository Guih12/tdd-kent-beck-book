class Money
  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end

  def equals(object)
    money = object
    amount == money.amount
  end
end
