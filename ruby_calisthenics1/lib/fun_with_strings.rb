module FunWithStrings
  def palindrome?
    # your code here
    
   a = self.downcase.scan(/\w/)
   return a == a.reverse
  end
  def count_words
    # your code here
   h=Hash.new(0) # hash intialization
   a = self.downcase.gsub(/[^a-z]+/i," ")  
   a.split.each{|x| h[x]=h[x]+1}
   return h
    
   
   
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
