# frozen_string_literal: true

class SumNumber
  attr_accessor :a, :b

  def initialize(a, b)
    @a = a
    @b = b
  end

  def sum_of_numbers
    a + b
  end
end
