require 'pry'

# 1
def total_characters(ary)
  return ary[0].length if ary.length == 1

  ary[0].length + total_characters(ary[1, ary.length - 1])
end

# 2
def even_numbers(numbers)
  return [] if numbers.length == 0

  if numbers[0] % 2 == 0
    [numbers[0]] + even_numbers(numbers[1, numbers.length - 1])
  else
    even_numbers(numbers[1, numbers.length - 1])
  end
end

# 3
def triangular_numbers(n)
  return n if n == 0

  n + triangular_numbers(n - 1)
end

def find_x(string)
  return 0 if string[0] == 'x'

  1 + find_x(string[1, string.length - 1])
end

def fibonacci(n)
  return n if n == 0
  return 1 if n == -1

  fibonacci(n - 1) + fibonacci(n - 2)
end

# puts fibonacci(10)
# puts triangular_numbers(5) #28
