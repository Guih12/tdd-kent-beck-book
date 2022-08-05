# frozen_string_literal: true

require_relative './money'

class Franc < Money
  def initialize(amount, currency = nil)
    super
  end

  def self.franc(amount)
    Money.new(amount, "CHF")
  end
end
