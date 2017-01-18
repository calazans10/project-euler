def solution(n)
  (0..n).each do |a|
    (a + 1..n).each do |b|
      (b + 1..n).each do |c|
        return a * b * c if a**2 + b**2 == c**2 && a + b + c == n
      end
    end
  end

  -1
end

require 'minitest/autorun'

class Tests < Minitest::Test
  def test_example_input1
    assert_equal 60, solution(12)
  end

  def test_example_input2
    assert_equal -1, solution(4)
  end

  def test_example_input3
    assert_equal 31_875_000, solution(1000)
  end
end
