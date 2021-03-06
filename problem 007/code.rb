def sieve
  n = 200_000
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
  sieve[n - 1]
end

require 'minitest/autorun'

class Tests < Minitest::Test
  def test_example_input1
    assert_equal 5, solution(3)
  end

  def test_example_input2
    assert_equal 13, solution(6)
  end

  def test_example_input3
    assert_equal 104_743, solution(10_001)
  end
end
