require 'pry'

# Solution 1 - too slow
def two_sum(nums, target)
  if target_match = nums.combination(2).find { |pair| pair.sum == target }
    index1 = nums.index(target_match[0])
    nums.delete_at(nums.index(target_match[0]))
    index2 =  nums.index(target_match[1]) + 1
    [index1, index2]
  end
end

# Solution 2 - passed
def two_sum(nums, target)
  nums_copy = nums.dup

  indices = []
  nums.each do |num|
    potential1 = nums_copy.shift

    nums_copy.each do |potential2|
      if potential1 + potential2 == target
        indices << nums.index(potential1)
        nums.delete_at(nums.index(potential1))
        indices << nums.index(potential2) + 1
      end
    end
  end

  indices
end

puts "#{two_sum([3, 3], 6)}"
puts "#{two_sum([2,7,11,15], 9)}"
puts "#{two_sum([11, 2,15, 7], 9)}"
