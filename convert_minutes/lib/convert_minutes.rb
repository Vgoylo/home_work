# frozen_string_literal: true

class ConvertMinutes
  attr_accessor :n

  def initialize(n)
    @n = n
  end

  def converter
    n * minutes
  end

  private

  def minutes
    60
  end
end
