require 'pry'

# expect(item.call([])).to eq('')
# expect(item.call([2])).to eq('')
# expect(item.call([3])).to eq('3')
# expect(item.call([1, 2])).to eq('1')
# expect(item.call([1, 2, 3])).to eq('1 3')
# expect(item.call([31, 22, 13])).to eq('31 13')
# You were given a sequence of natural numbers (that should look like one number
# in a string). Return all odd numbers from this sequence keeping their initial order. You should not use global variables.

def odd_numbers(numbers)
  return '' if numbers.length == 0

  if numbers[0] % 2 != 0
    "#{numbers[0]} " + odd_numbers(numbers[1, numbers.length - 1])
  else
    odd_numbers(numbers[1, numbers.length - 1])
  end
end

puts odd_numbers([1, 2, 3, 31, 22, 13])
