def solution(n)
  sum_of_squares = 0
  square_of_sum = 0

  (1..n).each do |i|
    sum_of_squares += i
    square_of_sum += i**2
  end

  (sum_of_squares**2 - square_of_sum).abs
end

# https://www.hackerrank.com/contests/projecteuler/challenges/euler006/editorial
def fast_solution(n)
  sum_of_squares = (n * (n + 1) / 2)**2
  square_of_sum = n * (n + 1) * (2 * n + 1) / 6
  (sum_of_squares - square_of_sum).abs
end

require 'minitest/autorun'

class Tests < Minitest::Test
  def test_example_input1
    assert_equal 2640, fast_solution(10)
  end

  def test_example_input2
    assert_equal 22, fast_solution(3)
  end

  def test_example_input3
    assert_equal 25_164_150, fast_solution(100)
  end
end
