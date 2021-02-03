# frozen_string_literal: true

require_relative 'fizzbuzz/number'

##
# FizzBuzz.
module FizzBuzz
  ##
  # Return fizz buzz for a 1 to 'limit'.
  def self.generate(limit)
    1.upto(limit).map { |i| FizzBuzz::Number.new(i).to_s }
  end
end
