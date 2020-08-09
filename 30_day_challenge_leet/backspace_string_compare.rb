require 'pry'

# @param {String} s
# @param {String} t
# @return {Boolean}

# Not mine
def string_creator(s)
  s.chars.each_with_object([]) do |char,array|
    '#' == char ? array.pop : array.push(char)
  end.join
end

def backspace_compare(s, t)
  string_creator(s) == string_creator(t)
end

puts backspace_compare("ab#c", "ad#c")
puts backspace_compare("a##c", "#a#c")
puts backspace_compare("ab##", "c#d#")
puts backspace_compare("bxj##tw", "bxj###tw")
puts backspace_compare("xywrrmp", "xywrrmu#p")
puts backspace_compare("bxj##tw", "bxo#j##tw")
