#* Exercise 1: Indexing into arrays.
puts "Array Indexing: "

# Define a first_and_last method that accepts an array of strings.
# The method should concatenate the first element and the last element
# and return the result.
# Assume the list will always have 1 or more elements.

#* Solution: Use the bracket syntax:
def first_and_last(string_array)
  string_array[0] + string_array[-1]
end

p first_and_last(["a", "b", "c"]) # => "ac"
p first_and_last(["bob", "tom", "rob"]) # => "bobrob"
p first_and_last(["a"]) # => "aa"
puts


# Define a product_of_even_indices method that accepts an
# array of numbers. The array will always have 6 total elements.
# The method should return the product (multiplied total) of
# all numbers at an even index (0, 2, 4).

#* Solution: Use the bracket syntax:
def product_of_even_indices(array)
  array[0] * array[2] * array[4]
end

p product_of_even_indices([1, 2, 3, 4, 5, 6]) # => 15
p product_of_even_indices([3, 4, 3, 5, 3, 6]) # => 27
puts


# Define a first_letter_of_last_string method that accepts an
# array of strings. It should return one character: the first
# letter of the last string in the array.
# Assume the array will always have at least one string.

#* Solution: Use the 2D indexing: 
def first_letter_of_last_string(string_array)
  string_array[-1][0]
end

p first_letter_of_last_string(["cat", "dog", "zebra"]) # => "z"
p first_letter_of_last_string(["nonsense"])            # => "n"



#* Exercise 2: Extracting multiple array elements.
puts "\n\nExtracting Multiple Array Elements: "

# Define a split_in_two method that accepts an array.
# I'd like to split the array into two arrays.
# If the original array has an even number of elements,
# ensure that the 2 new arrays have an equal number of elements
# If the original array has an odd number of elements,
# ensure that the first new array has the greater number of elements.

#* Solution: Get the array_length and midpoint. 
def split_in_two(array)

  array_length = array.length

  midpoint = (array_length / 2.0).round

  first_half = array.first(midpoint)
  second_half = array.last(array_length - midpoint)


  [first_half, second_half]
end

p split_in_two(["A", "B"]) # => [["A"], ["B"]]
p split_in_two(["A", "B", "C", "D"]) # => [["A", "B"], ["C","D"]]
p split_in_two(["A", "B", "C"]) # => [["A", "B"], ["C"]]
p split_in_two(["A", "B", "C", "D", "E"]) # => [["A", "B", "C"],["D","E"]]
