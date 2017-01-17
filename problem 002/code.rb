def fibonacci(number)
  number < 2 ? number : fibonacci(number - 1) + fibonacci(number - 2)
end

def solution(n)
  total = 0

  (1..n).each do |i|
    number = fibonacci(i)
    total += number if number.even?
    break if total + number > n
  end

  total
end

# https://www.hackerrank.com/contests/projecteuler/challenges/euler002/editorial
def fibonacci_sequence(maxi = 4 * 10**16)
  a = 0
  b = 1
  sequence = []

  while a < maxi
    sequence << a if a.even?
    a, b = b, a + b
  end

  sequence
end

def fast_solution(n)
  fibonacci_sequence.select { |item| item <= n }.inject(0, &:+)
end

require 'minitest/autorun'

class Tests < Minitest::Test
  def test_input_example1
    assert_equal 10, fast_solution(10)
  end

  def test_input_example2
    assert_equal 44, fast_solution(100)
  end

  def test_input_example3
    assert_equal 4_613_732, fast_solution(4_000_000)
  end
end
