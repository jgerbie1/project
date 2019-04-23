# Strings and Regular Expressions

# Part I
def hello(name)
  # YOUR CODE HERE
  a = "Hello, "
  return a.concat(name);
end

# Part II
def starts_with_consonant? s
  # YOUR CODE HERE
# a = s.chr
# a.downcase.gsub(/\w/)
# # return a == b a[/(?<vowel>[aeiou])(?<non_vowel>[^aeiou])/, "non_vowel"]
#   return s.downcase.scan(/\A/) == a
  if s.chr == s.scan(/[a-zA-Z]/)[0]
   return s.chr.downcase == s.chr.downcase.scan(/[^aeiou]/)[0]
 end 
 end 

# Part III
def binary_multiple_of_4? s
  # YOUR CODE HERE
  #cpattern of characters 
  if  s.match?(/\D/) == false
    if s.match?(/[2-9]/) == false
      if s.scan(/\d/)[-1] == "0"
      s.chop
      return s.scan(/\d/)[-1] == "0"
       end 
     end
   end
end
