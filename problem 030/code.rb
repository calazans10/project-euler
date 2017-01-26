def solution
  total = 0

  (10..355_000).each do |n|
    sum = n.to_s.chars.inject(0) { |a, e| a + e.to_i**5 }
    next unless sum == n
    total += n
  end

  total
end

require 'minitest/autorun'

class Tests < Minitest::Test
  def test_example_input1
    assert_equal 443_839, solution
  end
end
