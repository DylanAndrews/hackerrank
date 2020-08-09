require 'pry'
# You were given a natural number 'number'. Return all its digits one by one in reverse order
# separating them by spaces or new lines You should not use string, array or loops. Use only recursion and arithmetic operators.

# 961 = 169
def reverse_digits(num)
  num_array = num.to_s.chars
  return num_array[0] if num_array.length == 1

  "#{num_array.pop} " + reverse_digits(num_array.join.to_i)
end

puts reverse_digits(961)
