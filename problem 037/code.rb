def solution
  primes = sieve
  total = 0
  count = 0

  (4..primes.length - 1).each do |i|
    break if count == 11
    next unless truncable?(primes, primes[i])
    total += primes[i]
    count += 1
  end

  total
end

def sieve
  n = 740_000
  sieve = Array.new(n + 1) { true }
  sieve[0] = sieve[1] = false
  i = 2

  while i**2 <= n
    if sieve[i]
      k = i**2

      while k <= n
        sieve[k] = false
        k += i
      end
    end

    i += 1
  end

  sieve.each_index.select { |index| index if sieve[index] }
end

def truncable?(primes, n)
  n = n.to_s

  n.chars.each_index do |i|
    next if primes.include?(n[i..n.length - 1].to_i) && primes.include?(n[0..n.length - 1 - i].to_i)
    return false
  end

  true
end

require 'minitest/autorun'

class Tests < Minitest::Test
  def test_example_input1
    assert_equal 748_317, solution
  end
end
