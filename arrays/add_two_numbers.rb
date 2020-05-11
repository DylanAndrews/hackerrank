require 'pry'

# Solution 1 - too slow
def add_two_numbers(l1, l2)
  sum = l1.reverse.join('').to_i + l2.reverse.join('').to_i

  sum.to_s.split('').reverse.map(&:to_i)
end


puts "#{add_two_numbers([2,4,3], [5,6,4])}"
# puts "#{two_sum([2,7,11,15], 9)}"
# puts "#{two_sum([11, 2,15, 7], 9)}"
