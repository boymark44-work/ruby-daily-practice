#* Exercise 1: While Loop.
puts "\nWhile Loop: "

#* Solution: Implement a simple while loop that counts from 1 to 10:


puts


#* Solution: Implement a simple while loop that appends the character "a" for every iteration. Do it in 5 iterations.




#* Exercise 2: The Next Keyword.
puts "\n\nThe Next Keyword: "

# Iterate through each character of the string and return the index position in which the "$" is found
money_sentence = "I love $ in the morning, $ in the afternoon, and $ in the evening."


#* Solution: Iterate over the string without using the "next" keyword.


puts


#* Solution: Use the "next" keyword.
money_sentence = "I love $ in the morning, $ in the afternoon, and $ in the evening."




#* Exercise 3: The Break Keyword.
puts "\n\nThe Break Keyword: "

money_sentence = "I love $ in the morning, $ in the afternoon, and $ in the evening."

#* Solution: Use the "break" keyword. 


puts first_money_index # => 7



#* Exercise 4: Solving a Factorial Problem through Recursion.
puts "\n\nRecursion: Factorial. "

# Define a factorial function with a parameter of number.
# Set a base case of "return 1 if number is equal to 1".
# For the recursive case, multiply the number from the called function(number - 1)

#* factorial(5)
#* 5 * 4!
#*     4 * 3!
#*         3 * 2!
#*             2 * 1!
#*              return 1 (Base case reached)

#* Solution:



puts factorial(4) # => 24
puts factorial(5) # => 120
puts factorial(6) # => 720



#* Exercise 5: Solving a Reverse String Problem through Recursion.
puts "\n\nRecursion: Reversing a String. "


#* Solution: Iterate through the string starting from the last index.



puts reverse_string("straw hat") # => tah warts
puts


#* Solution: Use the each_char method:



puts reverse_string("straw hat") # => tah warts
puts


#* Solution: Use the recursive approach: 



puts reverse_string("straw hat") # => tah warts



#* Exercise 6: FizzBuzz Problem.
puts "\n\nFizzBuzz Problem: "



puts fizzbuzz(30)