require 'pry'

# You were given a sequence of natural numbers. Return the number of times “1” occurs in the sequence

def ones(list)
  return 0 if list.length == 0

  if list[0] == 1
    1 + ones(list[1, list.length - 1])
  else
    ones(list[1, list.length - 1])
  end
end

# puts ones([ 1 ,  1 ,  2 ]) # 2
puts ones([ 1, 1, 2, 1, 4, 5, 6, 7, 1, 7, 8 ]) # 2
