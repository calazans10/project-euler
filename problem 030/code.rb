def solution
  total = 0
  fifth_powers = {}
  10.times { |n| fifth_powers[n] = n**5 }

  (10..355_000).each do |n|
    sum = n.to_s.chars.inject(0) { |a, e| a + fifth_powers[e.to_i] }
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
