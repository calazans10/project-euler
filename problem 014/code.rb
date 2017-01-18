def collatz(n)
  seq = [n]

  while n != 1
    if n.even?
      n /= 2
    else
      n = 3 * n + 1
    end

    seq << n
  end

  seq
end

def solution(n)
  number = 0
  max_collatz_length = 0

  (1..n).each do |i|
    collatz_length = collatz(i).length

    if collatz_length >= max_collatz_length
      number = i
      max_collatz_length = collatz_length
    end
  end

  number
end

require 'minitest/autorun'

class Tests < Minitest::Test
  def test_example_input1
    assert_equal 9, solution(10)
  end

  def test_example_input2
    assert_equal 9, solution(15)
  end

  def test_example_input3
    assert_equal 19, solution(20)
  end

  def test_example_input4
    assert_equal 837_799, solution(1_000_000)
  end
end
