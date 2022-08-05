# frozen_string_literal: true

require_relative './money'

class Franc < Money
  def initialize(amount, currency = nil)
    super
  end

  def times(multiplier)
    Franc.new(@amount * multiplier)
  end
end
