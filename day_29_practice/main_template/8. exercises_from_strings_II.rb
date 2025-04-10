#* Exercise 12: Custom Count.

puts "Custom Count: "

#* Define a custom_count method that accepts a string and search characters.
#* The method should count how many times the
#* search characters appear in the original string. Do not use the
#* built-in count method in your solution.

#* Solution: Solve using the built-in "count" method.



p custom_count("Hello World", "l") # => 3
p custom_count("Hello World", "O") # => 0
p custom_count("Hello World", "z") # => 0
p custom_count("Hello World", "lo") # => 5
p custom_count("Hello World", "ol") # => 5
puts


#* Solution: Solve using a custom count approach.



p custom_count("Hello World", "l") # => 3
p custom_count("Hello World", "O") # => 0
p custom_count("Hello World", "z") # => 0
p custom_count("Hello World", "lo") # => 5
p custom_count("Hello World", "ol") # => 5
puts   



#* Exercise 13: Custom Delete.
puts "\n\nCustom Delete: "

#* Define a custom_delete method that accepts a string and
#* a string of deletion characters. The method should build up
#* a new string consisting of only characters that are NOT found
#* among the deletion characters. Do not use the built-in
#* delete method in your solution.

#* Solution: Solve using the built-in "delete" method.



p custom_delete("cottage cheese", "c") # => "ottage heese"
p custom_delete("cottage cheese", "e") # => "cottag chs"
p custom_delete("cottage cheese", "ce") # => "ottag hs"
p custom_delete("cottage cheese", "ec") # => "ottag hs"
puts    


#* Solution: Solve using a custom "delete" approach.



p custom_delete("cottage cheese", "c") # => "ottage heese"
p custom_delete("cottage cheese", "e") # => "cottag chs"
p custom_delete("cottage cheese", "ce") # => "ottag hs"
p custom_delete("cottage cheese", "ec") # => "ottag hs"
puts 



#* Exercise 14: Custom Index.
puts "\n\nCustom Index: "

#* Define a custom_index method that accepts a string and a search term.
#* The method should return the first index position of the
#* search term within the string. If the search term does not exist,
#* return nil. Do not use the built-in index method in your solution.

#* Solution: Solve using the built-in "index" method.



p custom_index("I am very handsome", "I") # => 0
p custom_index("I am very handsome", "e") # => 6
p custom_index("I am very handsome", "Z") # => nil
p custom_index("I am very handsome", "am") # => 2
p custom_index("I am very handsome", "ma") # => nil
puts   


#* Solution: Solve using custom index approach.



p custom_index("I am very handsome", "I") # => 0
p custom_index("I am very handsome", "e") # => 6
p custom_index("I am very handsome", "Z") # => nil
p custom_index("I am very handsome", "am") # => 2
p custom_index("I am very handsome", "ma") # => nil
puts  



#* Exercise 15: Custom Join.
puts "\n\nCustom Join: "

#* Define a custom_join method that accepts an array of strings
#* and a delimiter. The method should merge/join the array elements
#* together into a single string. It should insert the delimiter
#* in between every two subsequent elements. Do not use the
#* built-in join method in your solution.

#* Solution: Solve using the built-in "join" method.



p custom_join(["red", "green", "blue"], "!") # => "red!green!blue"
p custom_join(["Big", "Mac"], "$$") # => "Big$$Mac"
p custom_join([], "$$$") # => ""
puts 


#* Solution: Solve using custom join approach.



p custom_join(["red", "green", "blue"], "!") # => "red!green!blue"
p custom_join(["Big", "Mac"], "$$") # => "Big$$Mac"
p custom_join([], "$$$") # => ""
puts 



#* Exercise 16: Custom Split.
puts "\n\nCustom Split: "

#* Define a custom_split method that accepts a piece of text and a delimiter.
#* The method should return an array of the segments of the text
#* after being split by the delimiter. Your solution should NOT
#* use the built-in split method on a string. Assume that the delimiter
#* will never be an empty string.

#* Solution: Solve using the built-in "split" method.



p custom_split("Hi, my name is Boris", " ") # => ["Hi,", "my", "name", "is", "Boris"]
p custom_split("ravioli is delicious", "i") # => ["rav", "ol", " ", "s del", "c", "ous"]
p custom_split("Zebra", "j") # => ["Zebra"]
p custom_split(" hello", " ") # => ["hello"]
puts 


#* Solution: Solve using custom split approach.
def custom_split(text, delimiter)

end

p custom_split("Hi, my name is Boris", " ") # => ["Hi,", "my", "name", "is", "Boris"]
p custom_split("ravioli is delicious", "i") # => ["rav", "ol", " ", "s del", "c", "ous"]
p custom_split("Zebra", "j") # => ["Zebra"]
p custom_split(" hello", " ") # => ["hello"]
puts 



#* Exercise 17: The Split Method.
puts "\n\nThe Split Method: "

#* Define a longest_word method that accepts a string.
#* The method should return the longest word in the string.
#* If two words are tied for maximum length, the method should
#* return the last word in the phrase with that length.
#* You can assume:
#*  - Every two words are separated by a single space
#*  - The string does not contain any symbols or characters

#* Solution: Use the "split" method to separate the strings and store them into an array.


p longest_word1("Bobby loves very big scary kangaroos too") # => "kangaroos"
p longest_word1("Ruby is my favorite language") # => "language"
p longest_word1("Hello") # => "Hello"