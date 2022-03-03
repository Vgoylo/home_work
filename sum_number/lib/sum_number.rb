# frozen_string_literal: true

class SumNumber
  attr_accessor :a, :b

  def initialize(a = nil, b = nil)
    @a, @b = a.to_f , b.to_f
  end

  def sum_of_numbers
    a + b if scheck_clases?
  end

  private

  def scheck_clases?
    check_string_if_integer?(a) && check_string_if_integer?(b)
  end

  def check_string_if_integer?(inctanse)
    a.to_i && b.to_i
    inctanse.is_a?(Integer) || inctanse.is_a?(Float)
  end
end
