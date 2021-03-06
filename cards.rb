# frozen_string_literal: true

class Cards
  attr_accessor :suits, :value
  def initialize(suits, value)
    @value = value
    @suits = suits
  end

  def show
    puts [@value, @suits].to_s
  end

  def include_card
    count = 0
    count += value.to_i if (2..10).include? value.to_i
    count += 10 if %w[J Q K].include? value.to_s
    count += 11 if (%w[A].include? value.to_s) && (count + 11 < 21)
    count += 1 if %w[A].include? value.to_s
    count
  end
end
