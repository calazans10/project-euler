def solution
  words = File.new('./p042_words.txt').readlines[0].gsub(/\W/, ' ').split(' ')
  alphabet = ('A'..'Z').to_a
  triangles = (2..20).map { |n| (0.5 * n * (n - 1)).to_i }
  result = 0

  words.each do |word|
    value = word.chars.inject(0) { |a, e| a + alphabet.index(e) + 1 }
    next unless triangles.include?(value)
    result += 1
  end

  result
end

require 'minitest/autorun'

class Tests < Minitest::Test
  def test_example_input1
    assert_equal 162, solution
  end
end
