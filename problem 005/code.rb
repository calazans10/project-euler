def solution(n)
  number = 1

  loop do
    break if (1..n).all? { |i| (number % i).zero? }
    number += 1
  end

  number
end

# https://www.hackerrank.com/contests/projecteuler/challenges/euler005/editorial
def gcd(a, b)
  b.zero? ? a : gcd(b, a % b)
end

def fast_solution(n)
  prod = 1
  (2..n).each { |i| prod = (prod * i) / gcd(prod, i) }
  prod
end

require 'minitest/autorun'

class Tests < Minitest::Test
  def test_example_input1
    assert_equal 6, fast_solution(3)
  end

  def test_example_input2
    assert_equal 2520, fast_solution(10)
  end

  def test_example_input3
    assert_equal 232_792_560, fast_solution(20)
  end
end
