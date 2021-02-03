# frozen_string_literal: true

require_relative '../lib/fizzbuzz'

describe FizzBuzz do
  it '.generate' do
    output = FizzBuzz.generate 15
    expect(output).to eq %w[
      1
      2
      fizz
      4
      buzz
      fizz
      7
      8
      fizz
      buzz
      11
      fizz
      13
      14
      fizzbuzz
    ]
  end
end
