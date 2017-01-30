def solution
  triangles = [0]

  (1..100_000).each do |i|
    triangles[i] = triangles[i - 1] + i
    arr = divisors(triangles[i])
    next if arr.length <= 500
    return triangles[i]
  end
end

def divisors(n)
  arr = [n]
  limit = Math.sqrt(n).ceil

  (1..limit).each do |i|
    if (n % i).zero?
      arr << i
      arr << n / i if n != n / i
    end
  end

  arr.sort.uniq
end

require 'minitest/autorun'

class Tests < Minitest::Test
  def test_example_input1
    assert_equal 76_576_500, solution
  end
end
