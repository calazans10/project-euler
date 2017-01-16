def solution(number)
  total = 0
  number.times { |i| total += i if (i % 3).zero? || (i % 5).zero? }
  total
end

# https://www.hackerrank.com/contests/projecteuler/challenges/euler001/editorial
def arithmetic_sum_of_multiples(series, multiple)
  n = ((series - 1) / multiple.to_f).floor
  multiple * n * (n + 1) / 2
end

def solution_fast(number)
  arithmetic_sum_of_multiples(number, 3) +
    arithmetic_sum_of_multiples(number, 5) -
    arithmetic_sum_of_multiples(number, 15)
end

require 'minitest/autorun'

class Tests < Minitest::Test
  def test_input_example1
    assert_equal 23, solution_fast(10)
  end

  def test_input_example2
    assert_equal 2318, solution_fast(100)
  end

  def test_input_example3
    assert_equal 233_168, solution_fast(1000)
  end
end
