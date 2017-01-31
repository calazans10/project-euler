def solution(n)
  arr = []

  (2..n).each do |a|
    (2..n).each do |b|
      arr << a**b
    end
  end

  arr.uniq.sort.length
end

require 'minitest/autorun'

class Tests < Minitest::Test
  def test_example_input1
    assert_equal 69, solution(10)
  end

  def test_example_input2
    assert_equal 9183, solution(100)
  end
end
