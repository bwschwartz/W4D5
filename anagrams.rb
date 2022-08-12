def first_anagram?(str1, str2) # n!
  anagrams = str1.chars.permutation.to_a.map { |anagram| anagram.join("")}
  anagrams.include?(str2)
end

def second_anagram?(str1, str2) # n^2
  str1.chars.each do |char|
    str2 = str2.delete(char)
  end
  str2.length == 0
end

def third_anagram?(str1, str2) # n if bubble sorted
  str1.chars.sort == str2.chars.sort
end

def fourth_anagram?(str1, str2) # n
  count_hash1 = Hash.new(0)
  count_hash2 = Hash.new(0)
  str1.chars.each { |char| count_hash1[char] += 1}
  str2.chars.each { |char| count_hash2[char] += 1}
  count_hash1 == count_hash2
end

def bonus?(str1, str2)
  count_hash = Hash.new(0)
  str1.chars.each { |char| count_hash[char] += 1}
  str2.chars.each { |char| count_hash[char] -= 1}
  count_hash.values.all?(0)
end



str1 = "hello"
str2 = "llefoh"
p bonus?(str1,str2)
