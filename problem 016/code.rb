def solution(num)
  result = 2**num
  result.to_s.chars.map(&:to_i).reduce(:+)
end

require 'minitest/autorun'

class Tests < Minitest::Test
  def test_example_input1
    assert_equal 26, solution(15)
  end

  def test_example_input2
    assert_equal 1366, solution(1000)
  end

  def test_example_input3
    assert_equal 8, solution(3)
  end

  def test_example_input4
    assert_equal 7, solution(4)
  end

  def test_example_input5
    assert_equal 11, solution(7)
  end
end
