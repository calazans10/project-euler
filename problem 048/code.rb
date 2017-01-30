def solution
  n = 1000
  total = 0

  (1..n).each do |i|
    total += i**i
  end

  total.to_s[-10..-1].to_i
end

require 'minitest/autorun'

class Tests < Minitest::Test
  def test_example_input1
    assert_equal 9_110_846_700, solution
  end
end
