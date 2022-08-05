# frozen_string_literal: true

require_relative './money'

class Franc < Money
  CURRENCY = 'CHF'.freeze

  def times(multiplier)
    Franc.new(@amount * multiplier)
  end

  def currency
    CURRENCY
  end
end
