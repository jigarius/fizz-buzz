# frozen_string_literal: true

require_relative '../../lib/fizzbuzz/number'

describe FizzBuzz::Number do
  it 'returns fizz when number is divisible by 3' do
    [3, 6, 333].each do |n|
      fbn = FizzBuzz::Number.new(n)
      expect(fbn.to_s).to eq 'fizz'
    end
  end

  it 'returns buzz when number is divisible by 5' do
    [5, 10, 500].each do |n|
      fbn = FizzBuzz::Number.new(n)
      expect(fbn.to_s).to eq 'buzz'
    end
  end

  it 'returns fizzbuzz when number is divisible by both 3 and 5' do
    [15, 30, 225].each do |n|
      fbn = FizzBuzz::Number.new(n)
      expect(fbn.to_s).to eq 'fizzbuzz'
    end
  end

  it 'returns the number when not divisible by 3 or 5' do
    [2, 13, 1001].each do |n|
      fbn = FizzBuzz::Number.new(n)
      expect(fbn.to_s).to eq n.to_s
    end
  end

  it 'raises ArgumentError when for invalid values' do
    expect { FizzBuzz::Number.new(19.5) }.to raise_error(ArgumentError)
    expect { FizzBuzz::Number.new('19') }.to raise_error(ArgumentError)
  end
end
