def solution(n)
  max_palindrome = 0

  (100..999).each do |i|
    (100..999).each do |j|
      item = i * j
      max_palindrome = [max_palindrome, item].max if item < n && item.to_s == item.to_s.reverse
    end
  end

  max_palindrome
end

# https://www.hackerrank.com/contests/projecteuler/challenges/euler004/editorial
def fast_solution(n)
  palindromes = []

  999.downto(100) do |i|
    999.downto(100) do |j|
      item = (i * j).to_s
      palindromes << item.to_i if item == item.reverse
    end
  end

  palindromes.sort_by(&:-@).bsearch { |x| x < n }
end

require 'minitest/autorun'

class Tests < Minitest::Test
  def test_example_input1
    assert_equal 101_101, fast_solution(101_110)
  end

  def test_example_input2
    assert_equal 793_397, fast_solution(800_000)
  end

  def test_example_input3
    assert_equal 906_609, fast_solution(999_999)
  end
end
