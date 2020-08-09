require 'pry'

def palindrome(word)
  return true if word.length == 0

  word[-1] + palindrome(word[0..-2])
end

puts palindrome('racecar')
