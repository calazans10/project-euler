def solution
  triangles = []
  pentagonals = []
  hexagonals = []

  (2..60_000).each do |n|
    triangles << n * (n + 1) / 2
    pentagonals << n * (3 * n - 1) / 2
    hexagonals << n * (2 * n - 1)
  end

  (triangles & pentagonals & hexagonals).find { |elem| elem > 40_755 }
end

require 'minitest/autorun'

class Tests < Minitest::Test
  def test_example_input1
    assert_equal 1_533_776_805, solution
  end
end
