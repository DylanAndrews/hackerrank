require 'pry'
# You were given a natural 'number'. Calculate the sum of its digits. You should not use string, array or loops.

def sum(num)
  num_array = num.digits

  return num if num_array.count == 1

  num_array[0] + sum(num_array[1, num_array.length - 1].join.to_i)
end

puts sum(1853)
