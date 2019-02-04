# Lab 1
# Part I
def sum arr
  # YOUR CODE HERE
  return arr.inject(0){ |sum, n| sum + n }
end

# Part II
def max_2_sum arr
  if arr.length == 0
      return 0;
  else if arr.length == 1
      return arr.at(0)
  else
n = arr.max
 arr.delete_at(arr.index(n))
 m = arr.max
total = m + n
end
return total
end

# Part III
def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.empty?
    retrun false
  else if arr.length == 1
    retun false
   else
     arr.each do |i|
       arr.each do |j|
       if arr[i] + arr[j] == n
        return true
       else
      return false
       end
     end
    end 
  end
  end
end 
end