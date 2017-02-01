def solution(n)
  (4 * n**3 + 3 * n**2 + 8 * n - 9) / 6
end

require 'minitest/autorun'

class Tests < Minitest::Test
  def test_example_input1
    assert_equal 25, solution(3)
  end

  def test_example_input2
    assert_equal 101, solution(5)
  end

  def test_example_input3
    assert_equal 669_171_001, solution(1001)
  end
end
