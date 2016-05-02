letters = ("a".."z")  
vowels = ["a", "e", "i", "o", "u", "y"] 
hash = {}

letters.each_with_index do |value, id| 
  hash[value] = id + 1 if vowels.include?(value)
end

puts hash