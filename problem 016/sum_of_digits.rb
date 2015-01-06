def sum_of_digits(num)
  result = 2 ** num
  result.to_s.each_char.map(&:to_i).reduce(:+)
end
