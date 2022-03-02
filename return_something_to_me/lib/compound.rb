# frozen_string_literal: true

class Compound
  attr_accessor :n

  def initialize(n)
    @n = n
  end

  def complited
    "#{something} " + " #{n}"
  end

  private

  def something
    'something'
  end
end
