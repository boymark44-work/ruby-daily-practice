#* Exercise 1: While Loop.
puts "\nWhile Loop: "

#* Solution: Implement a simple while loop that counts from 1 to 10:
count = 1

while count <= 10
    puts count  

    count += 1
end
puts


#* Solution: Implement a simple while loop that appends the character "a" for every iteration. Do it in 5 iterations.
string_container = "" 

while string_container.length <= 5
    puts string_container

    string_container << "a"
end



#* Exercise 2: The Next Keyword.
puts "\n\nThe Next Keyword: "

# Iterate through each character of the string and return the index position in which the "$" is found
money_sentence = "I love $ in the morning, $ in the afternoon, and $ in the evening."


#* Solution: Iterate over the string without using the "next" keyword.
count = 0
last_index = money_sentence.length 

while count <= last_index
    if money_sentence[count] == "$"
        puts "Dollars is found at #{count}."   
        count += 1
    end

    count += 1
end
puts


#* Solution: Use the "next" keyword.
money_sentence = "I love $ in the morning, $ in the afternoon, and $ in the evening."

current_index = 0
last_index = money_sentence.length   

while current_index <= last_index
    if money_sentence[current_index] != "$"
        current_index += 1
        next   
    end

    puts "Dollars is found at #{current_index}."
    current_index += 1
end


#* Exercise 3: The Break Keyword.
puts "\n\nThe Break Keyword: "

money_sentence = "I love $ in the morning, $ in the afternoon, and $ in the evening."

#* Solution: Use the "break" keyword. 
count = 0
last_index = money_sentence.length    
first_money_index = nil   

while count <= last_index
    if money_sentence[count] == "$"
        first_money_index = count
        break   
    end

    count += 1
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
    starting_index = 0 
    index_from_last = string.length - 1
    result_string = ""

    while index_from_last >= starting_index
        result_string << string[index_from_last]

        index_from_last -= 1
    end

    result_string
end

puts reverse_string("straw hat") # => tah warts
puts


#* Solution: Use the each_char method:
def reverse_string(string)
    result_string = "" 
    
    string.each_char do |char|
        result_string = char + result_string
    end

    result_string
end


puts reverse_string("straw hat") # => tah warts
puts


#* Solution: Use the recursive approach: 
def reverse_string(string)
    return string unless string.length > 1

    string[-1] + reverse_string(string[0...-1])
end

puts reverse_string("straw hat") # => tah warts



#* Exercise 6: FizzBuzz Problem.
puts "\n\nFizzBuzz Problem: "

def fizzbuzz(num)
    count = 0 

    while num >= count
        if count % 15 == 0
            puts "FizzBuzz"
        elsif count % 3 == 0
            puts "Fizz"
        elsif count % 5 == 0 
            puts "Buzz"
        else
            puts count 
        end

        count += 1
    end

end


puts fizzbuzz(30)