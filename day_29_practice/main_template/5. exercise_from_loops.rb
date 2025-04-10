#* Exercise 1: While Loop.
puts "\nWhile Loop: "

#* Solution: Implement a simple while loop that counts from 1 to 10:
i = 1

while i <= 10
    puts i 

    i += 1
end
puts


#* Solution: Implement a simple while loop that appends the character "a" for every iteration. Do it in 5 iterations.
result = ""

while result.length < 5
    puts result

    result << "a"
end



#* Exercise 2: The Next Keyword.
puts "\n\nThe Next Keyword: "

# Iterate through each character of the string and return the index position in which the "$" is found
money_sentence = "I love $ in the morning, $ in the afternoon, and $ in the evening."


#* Solution: Iterate over the string without using the "next" keyword.
current_index = 0
final_index = money_sentence.length   

while current_index <= final_index
    if money_sentence[current_index] == "$"
        puts "Dollars is found at index #{current_index}."
    end

    current_index += 1
end

puts


#* Solution: Use the "next" keyword.
money_sentence = "I love $ in the morning, $ in the afternoon, and $ in the evening."

current_index = 0 
final_index = money_sentence.length - 1

while current_index <= final_index
    if money_sentence[current_index] != "$"
        current_index += 1
        next 
    end

    puts "Dollars is found at index #{current_index}."
    current_index += 1
end


#* Exercise 3: The Break Keyword.
puts "\n\nThe Break Keyword: "

money_sentence = "I love $ in the morning, $ in the afternoon, and $ in the evening."

#* Solution: Use the "break" keyword. 
current_index = 0 
final_index = money_sentence.length - 1    
first_money_index = nil   

while current_index <= final_index
    if money_sentence[current_index] == "$"
        first_money_index = current_index
        break  
    end

    current_index += 1
end

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
def factorial(num)
    return num if num == 1 

    num * factorial(num - 1)
end


puts factorial(4) # => 24
puts factorial(5) # => 120
puts factorial(6) # => 720



#* Exercise 5: Solving a Reverse String Problem through Recursion.
puts "\n\nRecursion: Reversing a String. "


#* Solution: Iterate through the string starting from the last index.
def reverse_string(string)
    first_index = 0 
    current_index_from_rear = string.length - 1
    result = "" 

    while current_index_from_rear >= first_index
        result << string[current_index_from_rear]

        current_index_from_rear -= 1
    end

    result
end


puts reverse_string("straw hat") # => tah warts
puts


#* Solution: Use the each_char method:
def reverse_string(string)
    result = "" 

    string.each_char do |char|
        result = char + result
    end

    result
end

puts reverse_string("straw hat") # => tah warts
puts


#* Solution: Use the recursive approach: 
def reverse_string(string)
    return string if string.length <= 1 


    string[-1] + reverse_string(string[0...-1])
end


puts reverse_string("straw hat") # => tah warts



#* Exercise 6: FizzBuzz Problem.
puts "\n\nFizzBuzz Problem: "

def fizzbuzz(num)
    i = 1 

    while i <= num
        if i % 15 == 0 
            puts "FizzBuzz"
        elsif i % 3 == 0 
            puts "Fizz"
        elsif i % 5 == 0 
            puts "Buzz"
        else
            puts i     
        end

        i += 1
    end

end


puts fizzbuzz(30)