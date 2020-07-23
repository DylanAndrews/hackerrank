require 'pry'

def move_zeroes(nums)
  length = nums.length
  zeros = nums.reject! { |num| num == 0 }
  new_length = nums.length
  counter = 0

  while counter < length - new_length
    nums << 0
    counter += 1
  end
  nums
end

puts move_zeroes([0,1,0,3,12])
