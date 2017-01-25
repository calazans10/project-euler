def solution(n)
  fat = factorial(n)
  fat.to_s.chars.inject(0) { |a, e| a + e.to_i }
end

def factorial(n)
  n < 1 ? 1 : n * factorial(n - 1)
end

require 'minitest/autorun'

class Tests < Minitest::Test
  def test_example_input1
    assert_equal 27, solution(10)
  end

  def test_example_input2
    assert_equal 648, solution(100)
  end

  def test_example_input3
    assert_equal 9, solution(6)
  end

  def test_example_input4
    assert_equal 6, solution(3)
  end
end
