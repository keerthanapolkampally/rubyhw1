# frozen_string_literal: true

# Part 1

def sum(arr)
  if arr.length == 0
    return 0
  else
    arr.inject(:+)
  end  
end

def max_2_sum(arr)
  if arr.length == 0
    return 0
  else
    sum arr.sort.last(2)
  end  
end

def sum_to_n?(arr, number)
  arr.combination(2).each {|i,j| return true if i+j==number}  
  return false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant?(string)
  if string.empty?
    return false
  end  
  string =~ /^[aeiouAEIOU#]/ ? false : true
end

def binary_multiple_of_4?(string)
  if string == "0"
    return true
  elsif /^[10]*00$/.match(string)
      return true
  else
      return false
  end 
end

# Part 3

# Object representing a book
class BookInStock
   
  def initialize(isbn, price)
    if isbn.empty? or price <=0 then raise ArgumentError
    else
      @isbn = isbn
      @price = price
    end  
  end
  
  attr_accessor :isbn
  attr_accessor :price
  
  def price_as_string
      "$#{"%.2f" % @price}"
  end
end
