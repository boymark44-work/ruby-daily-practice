#* Exercise 1: String Index Position.
puts "\nString Index Position: "

# Define a same_first_and_last_letter method that accepts a string.
# The method should return true if the first and last character are equal,
# and false otherwise.
# Assume the string will always have 1 or more characters.

#* Solution: Use the bracket syntax.



puts same_first_and_last_letter("runner") # => true
puts same_first_and_last_letter("Runner") # => false
puts same_first_and_last_letter("clock") # => false
puts same_first_and_last_letter("q") # => true
puts


# Define a three_number_sum method that accepts a 3-character string.
# The method should calculate the sum of the digits of the string.
# HINT: You’ll have to figure out a way to convert the
# string-ified digits to integers.

#* Solution: Extract elements from index: 0, 1, and 2 then convert them into integers.



puts three_number_sum("123") # => 6
puts three_number_sum("567") # => 18
puts three_number_sum("444") # => 12
puts three_number_sum("000") # => 0



#* Exercise 2: String Slicing.
puts "\n\nString Slicing: "

# Define a first_three_characters method that accepts a string.
# The method should return the first 3 characters of the string.

#* Solution: Use the bracket syntax.



puts first_three_characters("dynasty") # => dyn
puts first_three_characters("empire") # => emp
puts


#* Solution: Use the each_char method.



puts first_three_characters2("dynasty") # => dyn
puts first_three_characters2("empire") # => emp
puts


# Define a five_from_the_end method that accepts a string.
# The method should return the last 5 characters of the string.

#* Solution: Use the bracket syntax.



puts five_from_the_end("dynasty") # => nasty
puts five_from_the_end("rhinoceros") # => ceros
puts


#* Solution: Use the slice method:



puts five_from_the_end("dynasty") # => nasty
puts five_from_the_end("rhinoceros") # => ceros



#* Exercise 3: String Length and Comparison.
puts "\n\nString Length and Comparison: "

# Define a long_word method that accepts a string.
# The method should return a Boolean that reflects whether
# the string has more than 7 characters.

#* Solution:



puts long_word1("Ruby") # => false
puts long_word1("Magnificent") # => true
puts


# Define a first_longer_than_second method that accepts two string arguments.
# The method should return true if the first string is longer than the second
# and false otherwise (including if they are equal in length).

#* Solution:



puts first_longer_than_second("Python", "Ruby") # => true
puts first_longer_than_second("cat", "mouse") # => false
puts first_longer_than_second("Steven", "Seagal") # => false
puts
