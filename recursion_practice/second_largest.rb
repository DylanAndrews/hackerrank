require 'pry'

# You were given a sequence of natural numbers. Return the value of the second biggest number.

# expect(item.call([1, 2, 3, 4])).to eq(3)

def second_largest(nums, first: 0, second: 0)
  return second if nums.length == 0

  if nums[0] >= first
    second = first
    first = nums[0]
  end

  second_largest(nums[1, nums.length - 1], first: first, second: second)
end

puts second_largest([1, 2, 3 ,4, 8, 6, 22, 19, 25])
