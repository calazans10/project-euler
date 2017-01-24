def solution(n)
  total = 0

  (0...n).each do |i|
    sum1 = sum_divisors(i)
    sum2 = sum_divisors(sum1)

    total += i if i == sum2 && i != sum1
  end

  total
end

# https://www.quora.com/What-is-an-efficient-algorithm-to-find-divisors-of-any-number
def sum_divisors(n)
  arr = []
  limit = Math.sqrt(n).ceil

  (1..limit).each do |i|
    if (n % i).zero?
      arr << i
      arr << n / i if n != n / i
    end
  end

  arr.sort.inject(0, &:+)
end

require 'minitest/autorun'

class Tests < Minitest::Test
  def test_example_input1
    assert_equal 504, solution(300)
  end

  def test_example_input2
    assert_equal 31_626, solution(10_000)
  end
end
