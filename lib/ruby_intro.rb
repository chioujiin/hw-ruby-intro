# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  summ = 0
  for i in arr
  summ = summ+i
  end
return summ
end

def max_2_sum(arr)
  if arr.length>1
    return arr.sort[-1]+ arr.sort[-2]
  elsif arr.length==0
  return 0
  else return arr[0]
  end
end

def sum_to_n?(arr, n)
  map = {}
  for i in arr
    num = n-i
    if map.keys.include?(num)
      return TRUE
    else
      map[i] = 1
    end
  end    
  return FALSE
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant?(s)
  if /[aeiouAEIOU]/.match(s[0])
    return false
  elsif /[^a-zA-Z0-9.*]/.match(s)
    return false
  elsif s.length==0
    return false
  else
    return true
  end
end

def binary_multiple_of_4?(s)
  if s =~ /[a-zA-Z]/
    return false
  elsif s.length<1
    return false
  end
  return s.to_i(2)%4 ==0
end

# Part 3

class BookInStock
  
  def initialize(isbn, price)
    unless isbn.length>0 && price>0
    raise ArgumentError.new("ArgumentError")
    end
    @isbn = isbn
    @price = price
  end
  
  def price 
    @price
  end
  
  def isbn 
    @isbn
  end
  
  def price=(price) 
    @price = price
  end
  def isbn=(isbn) 
    @isbn = isbn
  end
  def price_as_string
    p = '%.2f' % @price 
    return "$#{p}"  
  end



end
