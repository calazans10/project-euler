def solution
  n = 100_000
  fib = Array.new(n + 2) { 0 }
  fib[1] = 1

  (2..n).each do |i|
    fib[i] = fib[i - 1] + fib[i - 2]
    return i if fib[i].to_s.length == 1000
  end
end

require 'minitest/autorun'

class Tests < Minitest::Test
  def test_example_input1
    assert_equal 4782, solution
  end
end
