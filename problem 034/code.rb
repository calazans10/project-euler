def solution
  total = 0
  factorials = {}
  10.times { |n| factorials[n] = factorial(n) }

  (10..2_540_161).each do |i|
    sum = i.to_s.chars.inject(0) { |a, e| a + factorials[e.to_i] }
    next if sum != i
    total += i
  end

  total
end

def factorial(n)
  n < 1 ? 1 : n * factorial(n - 1)
end

require 'minitest/autorun'

class Tests < Minitest::Test
  def test_example_input1
    assert_equal 40_730, solution
  end
end
