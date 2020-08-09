require 'pry'
# You were given a natural number ‘number’. Return a string with all numbers from 1 to 'number' using recursion. You can divide each digit by spaces or new lines.
def up_to(num, index: 1)
  return num.to_s if index == num

  "#{index} " + up_to(num, index: index + 1)
end

puts up_to(4)
