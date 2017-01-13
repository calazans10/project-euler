def sum_of_multiples_brute_force(number)
  sum = 0
  number.times { |i| sum += i if (i % 3).zero? || (i % 5).zero? }
  sum
end

# http://codereview.stackexchange.com/questions/2/project-euler-problem-1-in-python-multiples-of-3-and-5/280#280
def sum_of_multiples(number)
  arithmetic_sum_of_multiples(number, 3) +
    arithmetic_sum_of_multiples(number, 5) -
    arithmetic_sum_of_multiples(number, 15)
end

def arithmetic_sum_of_multiples(series, multiple)
  n = ((series - 1) / multiple.to_f).floor
  multiple * n * (n + 1) / 2
end

require 'minitest/autorun'

class Tests < Minitest::Test
  def test_input_example1
    assert_equal 23, sum_of_multiples(10)
  end

  def test_input_example2
    assert_equal 2318, sum_of_multiples(100)
  end

  def test_input_example3
    assert_equal 233_168, sum_of_multiples(1000)
  end
end
