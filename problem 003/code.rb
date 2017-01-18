def sieve(n)
  primes = (0..n).to_a
  primes[0] = primes[1] = nil
  limit = Math.sqrt(n).ceil

  (2..limit).each do |i|
    next unless primes[i]

    (i**2..n).step(i) do |j|
      primes[j] = nil
    end
  end

  primes.select { |item| item }
end

def solution(n)
  sieve(n).select { |item| (n % item).zero? }.max
end

# https://www.hackerrank.com/contests/projecteuler/challenges/euler003/editorial
def fast_solution(n)
  maxi = -1
  limit = Math.sqrt(n).to_i

  (2..limit).each do |i|
    while (n % i).zero?
      maxi = i if i > maxi
      n /= i
    end
  end

  return n if n > 1 && n > maxi

  maxi
end

require 'minitest/autorun'

class Tests < Minitest::Test
  def test_example_input1
    assert_equal 5, fast_solution(10)
  end

  def test_example_input2
    assert_equal 17, fast_solution(17)
  end

  def test_example_input3
    assert_equal 29, fast_solution(13_195)
  end

  def test_example_input4
    assert_equal 6857, fast_solution(600_851_475_143)
  end
end
