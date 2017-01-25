def solution
  alphabet = ('A'..'Z').to_a
  names = File.new('./p022_names.txt').readlines[0].gsub(/\W/, ' ').split(' ').sort
  total = 0

  names.each_with_index do |name, index|
    sum = name.chars.inject(0) { |a, e| a + alphabet.index(e) + 1 }
    total += sum * (index + 1)
  end

  total
end

require 'minitest/autorun'

class Tests < Minitest::Test
  def test_example_input1
    assert_equal 871_198_282, solution
  end
end
