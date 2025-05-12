#* Exercise 1: The Map and Collect Methods. 
puts "\nThe Map and Collect Methods: "


#* Instruction: Store the string length of every bird from the birds array.
birds = %w[eagle sparrow pigeon hawk penguin]


#* Solution: Use the "each" method:



puts


#* Solution: Use the "map" method:



puts


#* Solution: Use the "collect" method:



#* Exercise 2: The Select and Reject Methods. 
puts "\n\nThe Select and Reject: "

words = %w[racecar selfless sentences level]

#* Solution: Use the "select" method to select words that are palindrome.



puts


#* Solution: Use the "reject" method to reject words that are palindrome.



puts


#* Instruction: Reject those animals whose name have letters "c" on them.

#* Solution: Use the "reject" and "include?" method.
animals = %w[cheetah cat lion elephant dog cow]



#* Exercise 3: The Partition Method.
puts "\n\nThe Partition Method: "

#* Instruction: Separate the good foods from the bad foods. Good foods means food that has "Steak" while the bad foods has none.
foods = %w[Steak Vegetables Steak-Burger Kale Tofu Tuna-Steaks]

#* Solution: Use the "select" and "reject" method to separate the good foods from the bad:


puts


#* Solution: Use the "partition" to directly partition the good foods from the bad foods.




#* Exercise 4: The Find and Detect Methods in Ruby.
puts "\n\nThe Find and Detect Methods in Ruby: "

#* Instruction: Locate the first string that contains the character "e" and keep track of it.
words = %w[dictionary refrigerator platypus microwave]


#* Solution: Use the "find" method:


#* Solution: Use the "detect" method: 



#* Exercises 5: Unlimited Method Arguments.
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



#* Exercises 6: Defining a custom max method.
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



#* Exercise 7: The Each Method.

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



#* Exercises 8: The Each with Index.
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



#* Exercises 9: Filtering Methods.
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



#* Exercises 10: Unlimited Method Arguments.
puts "\n\nUnlimited Method Arguments For Strings: "

#* Define a sum_of_string_lengths method that accepts
#* any number of strings. The method return the sum
#* of the lengths of the strings.

#* Solution:



p sum_of_string_lengths("bob", "loves", "burgers") # => 15
p sum_of_string_lengths("coding", "is", "so", "fun") # => 13
p sum_of_string_lengths() # => 0



#* Exercise 11: Any? and All? Predicate Methods.
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
