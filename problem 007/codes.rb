def primes
  n = 120_000
  index = 0
  limit = Math.sqrt(n).ceil
  numbers = (2..n).to_a

  while limit >= numbers[index]
    prime = numbers[index]
    numbers = numbers.select { |number| number == prime || (number % prime).nonzero? }
    index += 1
  end

  numbers
end

def solution(n)
  primes[n - 1]
end

# https://www.hackerrank.com/contests/projecteuler/challenges/euler007/editorial
def fast_solution(n)
  arr = Array.new(200_008) { 0 }
  primes = []

  (2...200_000).each do |i|
    next if arr[i] == 1

    (2 * i...200_000).step(i) do |j|
      arr[j] = 1
    end
  end

  (2...200_000).each do |i|
    primes << i if arr[i].zero?
  end

  primes[n - 1]
end

require 'minitest/autorun'

class Tests < Minitest::Test
  def test_example_input1
    assert_equal 5, fast_solution(3)
  end

  def test_example_input2
    assert_equal 13, fast_solution(6)
  end

  def test_example_input3
    assert_equal 104_743, fast_solution(10_001)
  end
end
