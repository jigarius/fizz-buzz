# frozen_string_literal: true

##
# FizzBuzz.
module FizzBuzz
  # FizzBuzz::Number interface.
  class Number
    attr_reader :number

    def initialize(number)
      unless number.is_a?(Integer) && number.positive?
        raise ArgumentError, 'Number must be a positive integer'
      end

      @number = number
    end

    def fizz?
      (@number % 3).zero?
    end

    def buzz?
      (@number % 5).zero?
    end

    def fizzbuzz?
      fizz? && buzz?
    end

    def to_s
      result = ''

      result += 'fizz' if fizz?
      result += 'buzz' if buzz?
      return result unless result.empty?

      @number.to_s
    end
  end
end
