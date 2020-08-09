require 'pry'
# You were given two numbers 'number1' and 'number2'. If 'number1' < 'number2',
# return a string with all numbers from 'number1' to 'number2' including them. Otherwise,
# return a string with all numbers from ‘number1’ to ‘number2’ in descending order.
def two_numbers(num1, num2)
  return num1.to_s if num1 == num2

  if num1 < num2
    "#{num1} " + two_numbers(num1 + 1, num2)
  else
    "#{num1} " + two_numbers(num1 - 1, num2)
  end
end

puts two_numbers(8, 4)
