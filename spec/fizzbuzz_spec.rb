# frozen_string_literal: true

require_relative '../lib/fizzbuzz'

describe FizzBuzz do
  it 'returns fizz when number is divisible by 3' do
    [3, 6, 333].each do |n|
      expect(FizzBuzz.process_number n).to eq 'fizz'
    end
  end

  it 'returns buzz when number is divisible by 5' do
    [5, 10, 500].each do |n|
      expect(FizzBuzz.process_number n).to eq 'buzz'
    end
  end

  it 'returns fizzbuzz when number is divisible by both 3 and 5' do
    [15, 30, 225].each do |n|
      expect(FizzBuzz.process_number n).to eq 'fizzbuzz'
    end
  end

  it 'returns the number when not divisble by 3 or 5' do
    [2, 13, 1001].each do |n|
      expect(FizzBuzz.process_number n).to eq n
    end
  end

  it 'returns fizzbuzz for 1 to 15' do
    output = FizzBuzz.process_range 1, 15
    expect(output).to eq <<-EOT
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
EOT
  end
end
