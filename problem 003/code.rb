def primes(n)
  index = 0
  limit = Math.sqrt(n).ceil
  numbers = (2..n).to_a

  while limit >= numbers[index]
    prime = numbers[index]
    numbers = numbers.select { |number| number == prime || (number % prime).nonzero? }
    index += 1
  end

  numbers
end

def solution(n)
  primes(n).select { |item| (n % item).zero? }.max
end

# https://www.hackerrank.com/contests/projecteuler/challenges/euler003/editorial
def solution_fast(n)
  maxi = -1
  limit = Math.sqrt(n).to_i

  (2..limit).each do |i|
    while (n % i).zero?
      maxi = i if i > maxi
      n /= i
    end
  end

  return n if n > 1 && n > maxi

  maxi
end

require 'minitest/autorun'

class Tests < Minitest::Test
  def test_example_input1
    assert_equal 5, solution_fast(10)
  end

  def test_example_input2
    assert_equal 17, solution_fast(17)
  end

  def test_example_input3
    assert_equal 29, solution_fast(13_195)
  end

  def test_example_input4
    assert_equal 6857, solution_fast(600_851_475_143)
  end
end
