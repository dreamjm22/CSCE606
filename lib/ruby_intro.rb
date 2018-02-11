# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  arr.each {|x| sum += x}
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  end
  if arr.length == 1
    return arr[0]
  end
  res = arr.sort.last(2).sum
  return res
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  h = Hash.new
  x = arr.length - 1
  if x.zero?
    return false
  end
  while x >= 0
    if h.key?(n - arr[x])
      return true
    end
    h[arr[x]] = true
    x -= 1
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s == "0"
    return true
  end
  if s.count('01') != s.size || s[-2,2] != "00"
    return false
  end
  return true
end

# Part 3
class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize isbn, price
    # Instance variables
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end
end
