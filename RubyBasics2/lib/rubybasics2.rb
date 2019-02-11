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
 a = s.chr
 a.downcase
 b = a[/(?<vowel>[aeiou])(?<non_vowel>[^aeiou])/, "non_vowel"]
  return a === b
end

# Part III
def binary_multiple_of_4? s
  # YOUR CODE HERE
end
