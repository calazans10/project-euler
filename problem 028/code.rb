def solution(n)
  result = 1
  (3..n).step(2).each { |i| result += 4 * i**2 - 6 * i + 6 }
  result
end

def fast_solution(n)
  (4 * n**3 + 3 * n**2 + 8 * n - 9) / 6
end

require 'minitest/autorun'

class Tests < Minitest::Test
  def test_example_input1
    assert_equal 25, fast_solution(3)
  end

  def test_example_input2
    assert_equal 101, fast_solution(5)
  end

  def test_example_input3
    assert_equal 669_171_001, fast_solution(1001)
  end
end
