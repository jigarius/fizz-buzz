# frozen_string_literal: true

##
# FizzBuzz.
class FizzBuzz
  ##
  # Return fizz buzz for a number.
  def self.process_number(number)
    output = ''
    output += 'fizz' if (number % 3).zero?
    output += 'buzz' if (number % 5).zero?
    output.length.positive? ? output : number
  end

  ##
  # Returns fizz buzz for an array of numbers.
  def self.process_array(array)

  end

  ##
  # Return fizz buzz for a range of numbers.
  def self.process_range(from, till)
    output = []
    from.upto(till) do |i|
      output << process_number(i).to_s
    end
    output
  end
end
