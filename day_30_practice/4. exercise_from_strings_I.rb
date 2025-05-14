#* Exercise 1: String Index Position.
puts "\nString Index Position: "

# Define a same_first_and_last_letter method that accepts a string.
# The method should return true if the first and last character are equal,
# and false otherwise.
# Assume the string will always have 1 or more characters.

#* Solution: Use the bracket syntax.
def same_first_and_last_letter(string)
    string[0] == string[-1]
end

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
def three_number_sum(string)
    rolling_sum = 0 

    string.each_char do |char|
        rolling_sum += char.to_i
    end

    rolling_sum
end


puts three_number_sum("123") # => 6
puts three_number_sum("567") # => 18
puts three_number_sum("444") # => 12
puts three_number_sum("000") # => 0



#* Exercise 2: String Slicing.
puts "\n\nString Slicing: "

# Define a first_three_characters method that accepts a string.
# The method should return the first 3 characters of the string.

#* Solution: Use the bracket syntax.
def first_three_characters(string)
    string[0].to_s + string[1].to_s + string[2].to_s 
end


puts first_three_characters("dynasty") # => dyn
puts first_three_characters("empire") # => emp
puts


#* Solution: Use the each_char method.
def first_three_characters2(string)
    final_string = ""

    string.each_char do |char|
        final_string << char unless final_string.length > 2
    end

    final_string
end


puts first_three_characters2("dynasty") # => dyn
puts first_three_characters2("empire") # => emp
puts


# Define a five_from_the_end method that accepts a string.
# The method should return the last 5 characters of the string.

#* Solution: Use the bracket syntax.
def five_from_the_end(string)
    string[-5, 5]
end


puts five_from_the_end("dynasty") # => nasty
puts five_from_the_end("rhinoceros") # => ceros
puts


#* Solution: Use the slice method:
def five_from_the_end(string)
    string.slice(-5, 5)
end


puts five_from_the_end("dynasty") # => nasty
puts five_from_the_end("rhinoceros") # => ceros



#* Exercise 3: String Length and Comparison.
puts "\n\nString Length and Comparison: "

# Define a long_word method that accepts a string.
# The method should return a Boolean that reflects whether
# the string has more than 7 characters.

#* Solution:
def long_word1(string)
    string.length > 7
end



puts long_word1("Ruby") # => false
puts long_word1("Magnificent") # => true
puts


# Define a first_longer_than_second method that accepts two string arguments.
# The method should return true if the first string is longer than the second
# and false otherwise (including if they are equal in length).

#* Solution:
def first_longer_than_second(string1, string2)
    string1.length > string2.length
end


puts first_longer_than_second("Python", "Ruby") # => true
puts first_longer_than_second("cat", "mouse") # => false
puts first_longer_than_second("Steven", "Seagal") # => false
puts
