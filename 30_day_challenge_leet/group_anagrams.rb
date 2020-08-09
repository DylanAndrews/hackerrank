require 'pry'

# My solution passed
def group_anagrams(strs)
  ana_groups = Hash[strs.map {|x| [x.chars.sort.join, []]}]

  potential_anagrams = ana_groups.keys

  strs.each do |str|
    sorted_anagram = str.chars.sort.join
    if potential_anagrams.include?(sorted_anagram)
      ana_groups[sorted_anagram] << str
    end
  end

  ana_groups.values
end

puts group_anagrams(["eat", "tea", "tan", "ate", "nat", "bat"])
