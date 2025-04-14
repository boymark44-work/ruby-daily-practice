#* Exercise 1: Creating a Hash.
puts "Exercise 1: Creating a Hash:"

#* Define a hash_from_arrays method that accepts two arrays.
#* The two arrays will be equal in length.
#* Return a hash where the the elements of the first array
#* are the keys and the elements of the second array are
#* the elements. Match the elements across the two arrays
#* by their shared index position.

#* Solution: Use "each_with_index"
def hash_from_arrays(keys, values)
    result = {} 

    keys.each_with_index do |key, value|
        result[key] = values[value]
    end

    result
end


p hash_from_arrays(["red", "green", "blue"], [1, 2, 3])   # => {"red"=>1, "green"=>2, "blue"=>3}
p hash_from_arrays([:hello, :happy], [:goodbye, :sad])    # => {:hello=>:goodbye, :happy=>:sad}
p hash_from_arrays([], [])                                # => {}
puts   



#* Exercise 2: Word Frequency
puts "\n\nExercise 2: Word Frequency: "

#* Define a word_frequency method that accepts a piece of text.
#* Return a hash with a count of the number of times each word
#* appears within the text. The hash keys should be the words
#* and the values should be their counts. Assume the text will
#* be in all lowercase.

#* Solution: Use the "each" method to iterate.   
def word_frequency(text)
    counts = {} 
    words = text.split(" ")

    words.each do |word|
        if counts[word].nil?
            counts[word] = 1
        else 
            counts[word] += 1
        end
    end

    counts
end


p word_frequency("blue red blue green")  # => {"blue"=>2, "red"=>1, "green"=>1}
p word_frequency("a land far far away")  # => {"a"=>1, "land"=>1, "far"=>2, "away"=>1}
p word_frequency("")                     # => {}
puts   


#* Solution: Use the Hash.new(0) class. 
def word_frequency(text)
    counts = Hash.new(0)

    words = text.split(" ")

    words.each { |word| counts[word] += 1 }

    counts
end

p word_frequency("blue red blue green")  # => {"blue"=>2, "red"=>1, "green"=>1}
p word_frequency("a land far far away")  # => {"a"=>1, "land"=>1, "far"=>2, "away"=>1}
p word_frequency("")                     # => {}
puts   


#* Solution: Use the "tally" method. 
def word_frequency(text)
    text.split(" ").tally
end


p word_frequency("blue red blue green")  # => {"blue"=>2, "red"=>1, "green"=>1}
p word_frequency("a land far far away")  # => {"a"=>1, "land"=>1, "far"=>2, "away"=>1}
p word_frequency("")                     # => {}
puts   
