# frozen_string_literal: true

# Part 1

def sum(arr)
	result = 0
	arr.each do |item|
		result+=item
	end
	return result
end

def max_2_sum(arr)
	if arr.length == 0
		return 0
	elsif arr.length == 1
		return arr[0]
	else
		first_max = 0
		second_max = 0
	  if arr[0] > arr[1]
	    first_max = arr[0]
	    second_max = arr[1]
	  else
	    first_max = arr[1]
	    second_max = arr[0]
		  (2..arr.length-1).each do |i|
		    if arr[i] > first_max
		      second_max = first_max
		      first_max = arr[i]
		    elsif arr[i] > second_max and arr[i] <= first_max
		      second_max = arr[i]
		    end
		  end
		end
	  return first_max + second_max
	end
end


def sum_to_n?(arr, number)
	dict = {}
  arr.each do |item|
  	if dict.include?(number-item)
  		return true
  	else
  		dict[item] = 1
  	end
  end
  return false
end

# Part 2

def hello(name)
	return "Hello, " + name
end

def starts_with_consonant?(string)
	if string.strip() == ''
		return false
	else
  	return /[a-z&&[^aeiou]]/.match(string[0].downcase)
  end
end

def binary_multiple_of_4?(string)
  if string == "0"
  	return true
  else
  	return string.to_i(2) != 0 && string.to_i(2)%4==0
  end
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
end