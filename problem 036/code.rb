def solution
  total = 0
  (1..1_000_000).each { |i| total += i if palindromic?(i) && binary_palindromic?(i) }
  total
end

def palindromic?(n)
  n.to_s == n.to_s.reverse
end

def binary_palindromic?(n)
  n.to_s(2) == n.to_s(2).reverse
end

require 'minitest/autorun'

class Tests < Minitest::Test
  def test_example_input1
    assert_equal 872_187, solution
  end
end
