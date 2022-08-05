require_relative './money'

class Dollar < Money
  def initialize(amount, currency = nil)
    super
  end

  def self.dollar(amount)
    Dollar.new(amount, "USD")
  end

  attr_reader :currency
end
