require 'pry'

def single_number(ary)
  num_hash = Hash[ary.collect { |item| [item, 0] }]
  ary.each { |num| num_hash[num] += 1 }

  num_hash.key(1)
end

puts single_number([2,2,1])
puts single_number([4,1,2,1,2])
