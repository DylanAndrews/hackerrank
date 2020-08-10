require 'pry'

def palindrome(word)
  return true if word.length == 0 || word.length == 1
  word_ary = word.chars

  if word_ary.pop == word_ary.shift
    palindrome(word_ary.join)
  else
    false
  end
end

# puts palindrome('racecar')
# puts palindrome('agcba')
# puts palindrome('gg')
# puts palindrome('g')
puts palindrome('gab')
