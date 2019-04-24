# Ruby Basics Part 3

class BookInStock
# YOUR CODE HERE
 attr_accessor :isbn, :price  
 
 def initialize (isbn, price)
     @isbn = isbn
     @price = price
 
    if (isbn == "")
      raise ArgumentError.new
   
  elsif (price <= 0)
        raise ArgumentError.new
    end
end 
    def price_as_string 
        format = "$%.2f" % @price
        return format 
    end 
end