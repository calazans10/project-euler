def solution
  sieve.inject(:+)
end

def sieve
  n = 1_000_000
  sieve = Array.new(n + 1) { true }
  sieve[0] = sieve[1] = false
  i = 2

  while i**2 <= n
    if sieve[i]
      k = i**2

      while k <= n
        sieve[k] = false
        k += i
      end
    end

    i += 1
  end

  sieve.each_index.select { |index| index if truncable?(sieve, index) }
end

def truncable?(sieve, index)
  sieve[index] &&
    index > 7 &&
    truncable_from_left?(sieve, index) &&
    truncable_from_right?(sieve, index)
end

def truncable_from_left?(sieve, number)
  number = number.to_s

  number.chars.each_index do |i|
    return false unless sieve[number[i..number.length - 1].to_i]
  end

  true
end

def truncable_from_right?(sieve, number)
  number = number.to_s

  number.chars.each_index do |i|
    return false unless sieve[number[0..number.length - 1 - i].to_i]
  end

  true
end

require 'minitest/autorun'

class Tests < Minitest::Test
  def test_example_input1
    assert_equal 748_317, solution
  end
end
