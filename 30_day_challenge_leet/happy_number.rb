require 'pry'

def is_happy(n)
  sums = []

  while n != 1 do
    return false if sums.include?(n)
    sums << n
    ary = n.digits
    n = ary.map { |num| num * num }.sum
  end

  true
end

puts is_happy(12345)
