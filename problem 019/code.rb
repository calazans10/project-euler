require 'date'

def solution
  (Date.new(1901, 1, 1)..Date.new(2000, 12, 31)).select { |d| d.day == 1 && d.wday == 6 }.length
end

require 'minitest/autorun'

class Tests < Minitest::Test
  def test_example_input1
    assert_equal 171, solution
  end
end
