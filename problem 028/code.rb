def solution(a)
  n = a.length - 1
  result = 0

  a.each_index do |i|
    a.each_index do |j|
      result += a[i][j] if i == j || n - i == j
    end
  end

  result
end

# http://blog.dreamshire.com/project-euler-28-solution/
def fast_solution(n)
  s = (n - 1) / 2
  (16 * s**3 + 30 * s**2 + 26 * s + 3) / 3
end

require 'minitest/autorun'

class Tests < Minitest::Test
  def test_example_input1
    a = [
      [21, 22, 23, 24, 25],
      [20,  7,  8,  9, 10],
      [19,  6,  1,  2, 11],
      [18,  5,  4,  3, 12],
      [17, 16, 15, 14, 13]
    ]

    assert_equal 101, solution(a)
  end

  def test_example_input2
    assert_equal 25, fast_solution(3)
  end

  def test_example_input3
    assert_equal 101, fast_solution(5)
  end

  def test_example_input4
    assert_equal 669_171_001, fast_solution(1001)
  end
end
