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
  sieve(n).inject(0, &:+)
end

require 'minitest/autorun'

class Tests < Minitest::Test
  def test_example_input1
    assert_equal 10, solution(5)
  end

  def test_example_input2
    assert_equal 17, solution(10)
  end

  def test_example_input3
    assert_equal 142_913_828_922, solution(2_000_000)
  end
end
