# frozen_string_literal: true

require 'fizzbuzz/number'

##
# FizzBuzz.
module FizzBuzz
  ##
  # Return fizz buzz for a number.
  def self.number(number)
    FizzBuzz::Number.new(number).to_s
  end

  ##
  # Return fizz buzz for a range of numbers.
  def self.range(from, till)
    output = []
    from.upto(till) do |i|
      output << number(i)
    end
    output
  end
end
