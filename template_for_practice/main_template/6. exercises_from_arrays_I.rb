#* Exercise 1: Indexing into arrays.
puts "Array Indexing: "

# Define a first_and_last method that accepts an array of strings.
# The method should concatenate the first element and the last element
# and return the result.
# Assume the list will always have 1 or more elements.

#* Solution: Use the bracket syntax:
def first_and_last(string_array)

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


p product_of_even_indices([1, 2, 3, 4, 5, 6]) # => 15
p product_of_even_indices([3, 4, 3, 5, 3, 6]) # => 27
puts


# Define a first_letter_of_last_string method that accepts an
# array of strings. It should return one character: the first
# letter of the last string in the array.
# Assume the array will always have at least one string.

#* Solution: Use the 2D indexing: 
def first_letter_of_last_string(string_array)
  

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

end

p split_in_two(["A", "B"]) # => [["A"], ["B"]]
p split_in_two(["A", "B", "C", "D"]) # => [["A", "B"], ["C","D"]]
p split_in_two(["A", "B", "C"]) # => [["A", "B"], ["C"]]
p split_in_two(["A", "B", "C", "D", "E"]) # => [["A", "B", "C"],["D","E"]]



#* Exercise 3: The Map and Collect Methods. 
puts "\nThe Map and Collect Methods: "


#* Instruction: Store the string length of every bird from the birds array.
birds = %w[eagle sparrow pigeon hawk penguin]


#* Solution: Use the "each" method:



puts


#* Solution: Use the "map" method:



puts


#* Solution: Use the "collect" method:



#* Exercise 4: The Select and Reject Methods. 
puts "\n\nThe Select and Reject: "

words = %w[racecar selfless sentences level]

#* Solution: Use the "select" method to select words that are palindrome.



puts


#* Solution: Use the "reject" method to reject words that are palindrome.



puts


#* Instruction: Reject those animals whose name have letters "c" on them.

#* Solution: Use the "reject" and "include?" method.
animals = %w[cheetah cat lion elephant dog cow]



#* Exercise 5: The Partition Method.
puts "\n\nThe Partition Method: "

#* Instruction: Separate the good foods from the bad foods. Good foods means food that has "Steak" while the bad foods has none.
foods = %w[Steak Vegetables Steak-Burger Kale Tofu Tuna-Steaks]

#* Solution: Use the "select" and "reject" method to separate the good foods from the bad:


puts


#* Solution: Use the "partition" to directly partition the good foods from the bad foods.



#* Exercise 6: The Find and Detect Methods in Ruby.
puts "\n\nThe Find and Detect Methods in Ruby: "

#* Instruction: Locate the first string that contains the character "e" and keep track of it.
words = %w[dictionary refrigerator platypus microwave]


#* Solution: Use the "find" method:


#* Solution: Use the "detect" method: 



#* Exercises 7: Unlimited Method Arguments.
puts "\n\nThe Unlimited Method Arguments: "

#* Define a method called `adder` that accepts integers.
#* The method prints the integers to the console and calculates the its sum.
#* The sum is return by the method.

#* Unlimited method argument syntax: *argument_name.

#* Solution: Print the arguments and return the rolling sum. 



p adder(1) # => [1], 1
p adder(1, 2) # => [1, 2], 3
p adder(1, 2, 3) # => [1, 2, 3], 6
p adder(1, 2, 3, 4) # => [1, 2, 3, 4], 10
p adder(1, 2, 3, 4, 5) # => [1, 2, 3, 4, 5], 15
p adder # => 0, []
puts


#* Solution: Same operation as above. 



p adder(1, 2, 3, 4) # => [], 0
p adder(1, 2, 3, 4, 5) # => [3], 3
p adder(1, 2, 3, 4, 5, 6) # => [3, 4], 7



#* Exercises 8: Defining a custom max method.
puts "\n\nCustom Max Method: "

#* Define a custom_max method that accepts an array.
#* The method should return the largest value in the array.
#* If the array is empty, the method should return nil.
#* Do not use the max method in your solution!

#* Solution: Use the built-in max method.



p using_builtin_array([434.12, 723.99, 84.12, 649.92]) # => 723.99
p using_builtin_array([8, 10, 2, 1, 19, 4]) # => 19
p using_builtin_array(["Tree", "Elm", "Zebra"]) # => "Zebra"
p using_builtin_array([]) # => nil
puts


#* Solution: Use a custom approach.



p custom_max([434.12, 723.99, 84.12, 649.92]) # => 723.99
p custom_max([8, 10, 2, 1, 19, 4]) # => 19
p custom_max(["Tree", "Elm", "Zebra"]) # => "Zebra"
p custom_max([]) # => nil



#* Exercise 9: The Each Method.

puts "\n\nThe Each Method: "

#* Define a double_elements method that accepts an array of numbers.
#* The method should return a new array where each element is
#* double its value from the original array.

#* Solution: Use the "each" method. 



p double_elements([1, 2, 3, 4, 5]) # => [2, 4, 6, 8, 10]
p double_elements([10, 20, 30]) # => [20, 40, 60]
puts


#* Define an extract_long_words method that accepts an array of strings.
#* The method should return a new array of only the strings that
#* have more than 7 characters.

#* Solution: Use the "each" method. 



p extract_long_words(["spaghetti", "penne", "fettuccine", "ziti"]) # => ["spaghetti", "fettuccine"]
p extract_long_words(["lasagna", "ravioli", "cannelloni", "tagliatelle"]) # => ["cannelloni", "tagliatelle"]
puts


#* Define a pastas_and_sauces method that accepts two arrays.
#* The first array will hold pasta types and the second will hold sauces.
#* The method should return an array consisting of all the combinations
#* of pastas and sauce. Combine each pasta and sauce in a new string
#* (see example below). Make sure to capitalize each pasta and sauce

#* Solution: Use the "each" method. 



p pastas_and_sauces(["fettucine", "spaghetti", "penne"], ["alfredo", "bolognese", "pesto"]) # => ["Fettucine with Alfredo sauce.", "Fettucine with Bolognese sauce.", "Fettucine with Pesto sauce.", "Spaghetti with Alfredo sauce.", "Spaghetti with Bolognese sauce.", "Spaghetti with Pesto sauce.", "Penne with Alfredo sauce.", "Penne with Bolognese sauce.", "Penne with Pesto sauce."]



#* Exercises 10: The Each with Index.
puts "\n\nThe Each with Index: "

#* Define a product_of_number_and_index method that accepts an array of numbers.
#* The method should iterate over the elements. For each element,
#* it should multiply the element by its index position. It should
#* then add that product to a rolling sum. Return the final sum.
#* If the array has no elements, the final sum should be 0.

#* Solution: Assigned to an array the numbers that are multiplied with their index then use the "each_with_index" method.



p product_of_number_and_index([1, 2, 3]) # => 8
p product_of_number_and_index([]) # => 0
puts


#* Solution: Use the "each_with_index" method.



p product_of_number_and_index([1, 2, 3]) # => 8
p product_of_number_and_index([]) # => 0



#* Exercises 11: Filtering Methods.
puts "\n\nFiltering Methods: "

#* Define a reverse_all method that accepts an array of strings.
#* The method should return an array with all the strings in reversed order.

#* Solution: Use the "map" or "collect" methods.



p reverse_all(["cat", "bat", "tub"]) # => ["tac", "tab", "but"]
p reverse_all(["forest"]) # => ["tserof"]
p reverse_all([]) # => []
puts


#* Define a words_with_letter method that accepts an array of strings and a letter.
#* The method should return an array of the strings that include the letter.

#* Solution: Use "select" method.



p words_with_letter(["cat", "bat", "tub"], "a") # => ["cat", "bat"]
p words_with_letter(["cat", "bat", "tub"], "u") # => ["tub"]
p words_with_letter(["cat", "bat", "tub"], "z") # => []
puts


#* Define an evens_and_odds method that accepts an array of numbers.
#* The method should segment the array into two arrays.
#* The first array should contain the even numbers.
#* The second array should contain the odd numbers.
#* Return an array consisting of the two arrays.

#* Solution: Use the "partition" method.



p evens_and_odds([1, 2, 3, 4, 5]) # => [[2, 4], [1, 3, 5]]
p evens_and_odds([2, 4, 6, 8]) # => [[2, 4, 6, 8], []]  
p evens_and_odds([]) # => [[], []]

#* Exercises 12: Unlimited Method Arguments.
puts "\n\nUnlimited Method Arguments For Strings: "

#* Define a sum_of_string_lengths method that accepts
#* any number of strings. The method return the sum
#* of the lengths of the strings.

#* Solution:



p sum_of_string_lengths("bob", "loves", "burgers") # => 15
p sum_of_string_lengths("coding", "is", "so", "fun") # => 13
p sum_of_string_lengths() # => 0



#* Exercise 13: Any? and All? Predicate Methods.
puts "\n\nAny? and All?: "

#* Define a has_greater_than_seven_characters method that
#* accepts an array of strings. It should return a Boolean reflecting
#* whether any array element has more than 7 characters.

#* Solution: Use the any? method.



p has_greater_than_seven_characters(["ruby", "exercise", "cat"]) # => true
p has_greater_than_seven_characters(["forest"]) # => false
p has_greater_than_seven_characters([]) # => false
puts


#* Define an against_all_odds method that accepts an array of numbers.
#* It should return a Boolean reflecting whether all array elements
#* are even.

#* Solution: Use the all? method.



p against_all_odds([3, 5, 7, 2]) # => false
p against_all_odds([2, 4, 6]) # => true



#* Exercise 14: Implement the "reverse" method.

p [1, 2, 3, 4, 5].reverse #* =>
p [true, false, true, false] #* => 
p ["Mark", "Glenn", "Gabuya"] #* => 

#* Alter permanently the object: 
array = [1, 2, 3, 4, 5, 6]

p array #* => 



puts 
#* Exercise 15: Implement the "sort" method.

#* Sort in ascending order:  
p [5, 4, 3, 2, 1] 

#* Sort in descending order: 
p [5, 4, 3, 2, 1] 

#* Sort alphabetically: 
p ["Hello", "Blah", "Zebra"] #* => ["Blah", "Hello", "Zebra"]

#* Sort in reverse alphabetical: 
p ["Hello", "Blah", "Zebra"] #* => ["Zebra", "Hello", "Blah"]

#* Sort to determine precedence: 
p ["Hello", "Blah", "Zebra", "artist", "zebra"] #* => ["Blah", "Hello", "Zebra", "artist", "zebra"]



puts 
#* Exercise 16: Implement the "uniq" method.

numbers = [1, 8, 3, 2, 3, 8, 1, 8, 9]

p numbers #* => [1, 8, 3, 2, 3, 8, 1, 8, 9]

#* Permanently alter the object: 

p numbers #* => 



puts 
#* Exercise 17: Implement the "compact" method.

p [1, 2, 3.14, false, nil]  #* => [1, 2, 3.14, false]
p [1, nil, nil, 2, 3.14, false, nil]  #* => [1, 2, 3.14, false]
p [1, 2, 3.14, nil, nil, false, nil]  #* => [1, 2, 3.14, false]

p [1, 2, 3]  # => [1, 2, 3]
p []  # => []

#* Permanently alter the object: 
sports = ["Football", "Soccer", nil, "Baseball", nil]

p sports #* => ["Football", "Soccer", "Baseball"]



puts 
#* Exercise 18: Implement the "inject" or "reduce" method: 

#* element = 10, sum = 0, number = 10, sum + number = 10 *Represents what to send to the next loop* 
#* element = 20, sum = 10, number = 20, sum + number = 30 
#* element = 30, sum = 30, number = 30, sum + number = 60 

p [10, 20, 30] #* => 60
p [10, 20, 30] #* => 60

#* Implement with the color_counts: 

color_counts 


p color_counts #* =>{"Red"=>2, "Blue"=>1}


color_counts 

p color_counts #* =>{"Red"=>2, "Blue"=>1}



puts 
#* Exercise 19: Implement the "flatten" method: 

party_attendees = [
  "Joe", 
  ["Bob", "Keith", "Cam"],
  "Holly",
  ["Rick", "Molly"]
]

p party_attendees #* => ["Joe", "Bob", "Keith", "Cam", "Holly", "Rick", "Molly"]



puts 
#* Exercise 20: Implement the "sample" method: 

flavors = ["Chocolate", "Vanilla", "Strawberry", "Cookies and Cream"]
p flavors #* => *Getting a random ice cream flavor*
p flavors #* => *Getting a random ice cream flavor*
p flavors #* => *Getting a random ice cream flavor*
p flavors #* => *Getting a random ice cream flavor*
p flavors #* => *Getting a random ice cream flavor*
p flavors #* => *Getting a random ice cream flavor*



puts 
#* Exercise 21: Multiply array elements using asterisk "*":

p [1, 2, 3]  #* => [1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3]
p ["Mark", "Glenn", "Gabuya"]  #* => ["Mark", "Glenn", "Gabuya", "Mark", "Glenn", "Gabuya"]



puts 
#* Exercise 22: Merge arrays while excluding duplicates:

p [1, 2, 3, 3, 4] [3, 4, 5, 6] #* => [1, 2, 3, 4, 5, 6]

#* Invoke the union ("|" or vertical bar) as a method: 
p [1, 2, 3, 3, 4]   

#* Add more arrays to merge: 
p [1, 2, 3] 



puts 
#* Exercise 23: Remove array elements that exist from another array:

#* Remove the [2, 3] from the first array: 
p [1, 1, 2, 2, 3, 3, 4, 4, 5]  #* => [1, 1, 4, 4, 5]

#* Invoke as a method: 
p [1, 1, 2, 2, 3, 3, 4, 4, 5]  #* => [1, 1, 4, 4, 5]



puts 
#* Exercise 24: Array intersection using the ampersand "&" symbol:

#* Keeping elements from both side or extracting intersection using this 
#* second array: [1, 4, 5, 8, 9]
p [1, 1, 2, 3, 4, 5]  #* => [1, 4, 5]

#* Add more arrays: 
p [1, 1, 2, 3, 4, 5]


#* Invoke as a method: 
p [1, 1, 2, 3, 4, 5].&([1, 4, 5, 8, 9]) #* => [1, 4, 5]


