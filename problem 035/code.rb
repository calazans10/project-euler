def circular?(sieve, number)
  digits = number.to_s.chars
  n = digits.length - 1

  (1..n).each do |_|
    digits << digits.shift
    return false unless sieve[digits.join.to_i]
  end

  true
end

def solution(n)
  sieve = Array.new(n + 1) { true }
  sieve[0] = sieve[1] = false
  i = 2

  while i**2 <= n
    k = i**2

    if sieve[k]
      while k <= n
        sieve[k] = false
        k += i
      end
    end

    i += 1
  end

  sieve.each_index.select { |index| index if sieve[index] && circular?(sieve, index) }.length
end

require 'minitest/autorun'

class Tests < Minitest::Test
  def test_example_input1
    assert_equal 13, solution(100)
  end

  def test_example_input2
    assert_equal 25, solution(1000)
  end

  def test_example_input3
    assert_equal 33, solution(10_000)
  end

  def test_example_input4
    assert_equal 43, solution(100_000)
  end

  def test_example_input4
    assert_equal 55, solution(1_000_000)
  end
end
