require 'pry'

# @param {Integer[]} nums
# @return {Integer}
# Fast understandable. Not mine.
def max_sub_array(nums)
  return 0 if nums.nil?
  i = 0
  max = nums[i]
  res = max

  while nums[i+1]
    if max + nums[i+1]> nums[i+1]
      max+=nums[i+1]
    else
      max = nums[i+1]
    end
    if max > res
      res = max
    end

    i+=1
  end
  res
end

# Too slow. Mine
def max_sub_array(nums)
  subs = []

  nums.length.times do |time|
    nums.each_with_index do |num, i|
      last = -1 - i
      subs << nums[0..last]
    end
    nums.shift
  end

  sums = subs.map(&:sum)
  sums.max
end

puts max_sub_array([-2,1,-3,4,-1,2,1,-5,4])
