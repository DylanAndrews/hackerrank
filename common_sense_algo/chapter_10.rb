require 'pry'

array=[1, 2, 3, [4, 5, 6], 7, [8, [9, 10, 11, [12, 13, 14] ] ], [15, 16, 17, 18, 19, [20, 21, 22, [23, 24, 25, [26, 27, 29] ], 30, 31 ], 32 ], 33 ]

def print_nums(ary)
  ary.each do |ele|
    if ele.is_a?(Integer)
      ele
    else
      print_nums(ele)
    end
  end
end

def sum_array(sum, array)
  return sum if array == []

  first = array.shift

  sum_array(first + sum, array)
end

def reverse_string(string)
  return if string == ''

  ary = string.chars
  last = ary.pop

  if ary.length > 0
    binding.pry
    ary.unshift(last)
    puts last << reverse_string(ary.join)
  end
end

def count_x(string)
  return if string.length == 0

  if string[0] == 'x'
    1 + count_x(string[1, string.length - 1]).to_i
  else
    0 + count_x(string[1, string.length - 1]).to_i
  end
end

puts count_x('axbxcxdxxxx')
puts reverse_string("abcde")
puts sum_array(0, [1, 2, 3, 4, 5])
puts print_nums(array)
