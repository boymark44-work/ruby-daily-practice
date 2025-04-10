#* Integers in Underscores.

p # => 999_999_000
p # => 1_000_000
p # => 1_000_000_000
p # => 1_000_000_000_000



#* String Concatenate with Shovel Operator "<<" and "+".

puts # => (Number String - Shovel Operator Concatenation "<<")
puts # => (Regular String - Shovel Operator Concatenation "<<")
puts # => (Number String - Addition Operator Concatenation "+" )
puts # => (Regular String - Addition Operator Concatenation "+" )



#* The p, print and puts method.
p # =>  (More detailed printing)
puts # => (Default \n or newline after printing)
print # => (Single-line printing)



#* Types of Variables in Ruby: Local, Instance, Class, Global, and Constants

  #* Local:
  def my_method
    local_var = "I'm local"
    puts local_var
  end # local_var is not accessible outside of my_method.


  #* Instance:
  class Person
    def initialize(name)
      @name = name
    end

    def show_name
      puts @name
    end
  end

  person = Person.new("Mark Glenn")
  person.show_name


  #* Class Variables:
  class Animal
    @@species_count = 0

    def initialize
      @@species_count += 1
    end

    def self.species_count
      @@species_count
    end

  end

  cat = Animal.new
  dog = Animal.new

  puts Animal.species_count # => 2


  #* Global Variables:
  $global_var = "I'm global!"


  def display_global
    puts $global_var
  end

  display_global # => "I'm global!"


  #* Constants:
  class MathConstants
    PI = 3.14159
  end

  puts MathConstants::PI

#* Summary of Variable Types:
  # Local variables: Method/block scope (lowercase letters or _).
  # Instance variables: Object-specific, across methods (@).
  # Class variables: Shared across all instances of a class (@@).
  # Global variables: Accessible everywhere ($).
  # Constants: Shouldn't be modified after assignment (uppercase letters).



#* Parallel Variable Assignment.

a, b, c = 10, 20, 30
p a, b, c # => (Print all)



#* Swapping Variables.

a = 1
b = 2
puts a, b # => 1, 2
puts

a, b = b, a
puts a, b # => 2, 1



#* Integer Methods: next, succ, and pred

puts # => 11
puts # => 0
puts # => 9



#* Object Methods: length, upcase, and downcase

puts # => 11
puts # => HELLO WORLD
puts # => totally different



#* Method Chaining

puts "Hi, there".upcase.length.succ # => 9
puts 10.pred.next.pred # => 11



#* Object Conversion: class, to_i, to_f, and to_s

sample = 5

p sample.to_i # =>
p sample.class # => Integer

p # =>
p # => Float

p # =>
p # => String



#* String Interpolation.

name = "Mark"
age = 25
status = "single"
puts "The name is #{name}. I am #{age} years old. And I am still #{status}."



#* The inspect method.

puts "Hello World".inspect # => "Hello World"
puts 25.90.inspect # => 25.9
puts 34.inspect # => 34
puts ["CYA-Iligan", "Lingkod ng Panginoon - Iligan", "TLOW-Iligan"].inspect # => ["CYA-Iligan", "Lingkod ng Panginoon - Iligan", "TLOW-Iligan"]



#* The nil object.

puts nil # => (Nothing to display)

what_is_the_value_here = puts "hello"
p what_is_the_value_here # => nil



#* Optional Parameters and Default Arguments.

def title_assigner(name, suffix = "The Great.")

end

puts title_assigner("Mark Glenn", "Gabuya.") # => Mark Glenn Gabuya
puts title_assigner("Dave") # => Dave The Great.



#* Other Ways on how to write Arithmetic.

puts 1.+(2) # => 3
puts 5.-(3) # => 2
puts 5.*(5) # => 25
puts 20./(4) # => 5
puts 10.divmod(3) # => [3, 1], (Returns both the quotient and remainder)



#* Float Methods.

p 10.5.floor # => 10
p 10.9.floor # => 10
p 10.9.floor.class # => Integer

p 10.5.ceil # => 11
p 10.9.ceil # => 11
p 10.9.ceil.class # => Integer

p 3.14159.round # => 3
p 3.86.round # => 4
p 3.2.round # => 3
p 3.14159.round(4) # => 3.1416
p 3.14159.round(3) # => 3.142



#* Intro to Booleans

handsome = true
stupid = false
puts handsome
puts handsome.class # => TrueClass
puts stupid
puts stupid.class # => FalseClass



#* Methods with Arguments.

puts "Big Mac".include?("B") # => true
puts "Big Mac".include?("b") # => false
puts("CYA", "Lingkod ng Panginoon", "TLOW") # => (Prints all the string in every line)



#* Methods with Multiple Arguments.

puts 20.between?(10, 30) # => true
puts 20.between?(10, 15) # => false
puts 20.between?(45, 20) # => false
puts 1.2.between?(1.1, 1.3) # => true
puts 1.2.between?(1.1, 1.1) # => false
puts -10.between?(-13, -8) # => true
puts -8.3.between?(-9.5, -7.2) # => true



#* Predicate Methods.

puts 10.odd? # => false
puts 11.odd? # => true
puts 11.odd?.class # => TrueClass

puts 1.even? # => false
puts 2.even? # => true
puts 1.even?.class # => FalseClass

puts 10.positive? # => true
puts -10.positive?.class # => FalseClass
puts -10.negative?.class # => TrueClass
puts 10.positive? # => true

puts 0.zero? # => true
puts 5.zero? # => false
puts 5.zero?.class # => FalseClass



#* Equality Operator.

puts 10 == 10 # => true
puts "handsome" == "pretty" # => false
puts "hello" == "hello" # => true
puts "hello" == "HELLO" # => false
puts "5".to_i == 5 # => true
puts "5" == "5".to_s # => true



#* Inequality Operator.

puts 10 != 5 # => true
puts 10 != 10 # => false
puts "Hello" != "Goodbye" # => true
puts "Hello" != "hello" # => true
puts "Hello" != "Hello " # => true
puts "Hello" != "Hello" # => false
puts 5 != "5" # => true



#* The times, upto, downto, and step methods including block variables.

5.times { print "Hello" } # => (A single-line block)

blocks = 4.times do
  puts "Ruby is awesome."
  puts "I'm having fun learning it."
end

puts blocks # => A multi-line block stored in a variable


5.upto(10) { |current_count| puts "The loop is now on: #{current_count}." }

10.downto(1) { |current_count| puts "The missile will launch in T-Minus: #{current_count}." }

1.step(10) { |current_count| puts "#{current_count}" }

1.step(20, 4) { |current_count| puts "#{current_count}" }



#* Using Descriptive Variables to assign boolean logic.

entree = "Steak"
price = 49.99

food_is_delicious = entree == "Steak"
meal_is_affordable = price < 29.99

if food_is_delicious or meal_is_affordable
  puts "Atleast one condition is satisfied, purchasing the meal now!!!"
end



#* Conditional Assignment Operator.

my_value = nil
p my_value # => nil

my_value ||= 5
p my_value # => 5

my_value ||= 10
p my_value # => 5, unless you set the value again into nil then it will work

my_value = nil
my_value ||= 10
p my_value # => 10, unless you set the value again into nil then it will work



#* String Concatenation Options.

first_name = "Mark Glenn"
last_name = " Gabuya"

p first_name + last_name # => "Mark Glenn Gabuya"
p first_name << last_name # => "Mark Glenn Gabuya", can alter permanently the object
p first_name # => "Mark Glenn Gabuya"

# String Methods often results to complete alteration or modification of the object.
p first_name.concat(last_name) # => "Mark Glenn Gabuya Gabuya"


first_name = "Mark Glenn"
last_name = " Gabuya"
p first_name.concat(last_name) # => "Mark Glenn Gabuya"
p first_name # => "Mark Glenn Gabuya", can also alter permanently the object


first_name = "Mark Glenn"
last_name = " Gabuya"
p first_name.prepend(last_name)



#* The length and size methods.

p "Hello World".length # => 11
p "Hello World".size # => 11

p "".length # => 0
p "".size  # => 0


#* Overwriting Characters. (Single and Multiple)

string = "Rocket Ship"

string[0] = "p"
p string


string[1] = "a"
p string

string[9] = "o"
p string


cravings = "I love blueberry pie."

cravings[7, 4] = "rasp"
#cravings[7, 4] = "cherry"
#cravings[7, 4] = "red"

p cravings # => "I love raspberry pie."



#* Inserting Characters using the insert method.

typo = "GeorgWashington"

typo.insert(5, "e ")
p typo # => "George Washington"



#* The empty? and nil? methods.

p "".empty? # => true
p "abc".empty? # => false

p "Hello".nil? # => false
p "".nil? # => false
p 5.nil? # => false

something = nil
p something.nil? # => true



#* The upcase, downcase, swapcase and capitalize methods.

p "Eiffel Tower".upcase # => "EIFFEL TOWER"
p "Eiffel Tower".downcase # => "eiffel tower"
p "Eiffel Tower".swapcase # => "eIFFEL tOWER"
p "eiffel tower".capitalize # => "Eiffel tower"



#* The reverse method.

p "Ruby".reverse # => ybuR
p "54321".reverse # => 12345



#* The Bang! Method.

word = "spaghetti"

p word.capitalize # => "Spaghetti"
p word # => "spaghetti"

word.upcase!
p word # => "SPAGHETTI"

word.downcase!
p word # => "spaghetti"

word.swapcase!
p word # => "SPAGHETTI"

word.capitalize!
p word # => "Spaghetti"

word.reverse!
p word # => "ittehgapS"



#* Short-hand Syntax for Arrays

names = ["Luke", "Mark", "Matthew", "John"]
p names # => ["Luke", "Mark", "Matthew", "John"]

names = %w[Luke Mark Matthew John]
p names # => ["Luke", "Mark", "Matthew", "John"]



#* Accessing Elements. (Single and Multiple)

fruits = %w[Apple Orange Grape Banana]

# Bracket Syntax:
p fruits[0] # => "Apple"
p fruits[-1] # => "Banana"
p fruits[100] # => nil

# Using slice Method:
p fruits.slice(0) # => "Apple"
p fruits.slice(-1) # => "Banana"
p fruits.slice(100) # => nil

# Method Invocation:
p fruits.[](0) # => "Apple"
p fruits.[](-1) # => "Banana"
p fruits.[](100) # => nil

# Using fetch Method:
p fruits.fetch(0) # => "Apple"
p fruits.fetch(-1) # => "Banana"
#p fruits.fetch(100) # => (IndexError)


sesame_street = %w[Elmo Big-Bird Cookie-Monster Bert Ernie Oscar]

p sesame_street[0, 3] # => ["Elmo", "Big-Bird", "Cookie-Monster"]
p sesame_street[2, 4] # => ["Cookie-Monster", "Bert", "Ernie", "Oscar"]
p sesame_street[3, 1] # => ["Bert"]
p sesame_street[3, 10] # => ["Bert", "Ernie", "Oscar"]

p sesame_street.slice(0, 3) # => ["Elmo", "Big-Bird", "Cookie-Monster"]
p sesame_street.slice(2, 4) # => ["Cookie-Monster", "Bert", "Ernie", "Oscar"]
p sesame_street.slice(3, 1) # => ["Bert"]
p sesame_street.slice(3, 10) # => ["Bert", "Ernie", "Oscar"]


tv_channels = %w[CBS UPN CW FOX NBC ESPN]

p tv_channels.values_at(0) # => ["CBS"]
p tv_channels.values_at(0, 4) # => ["CBS", "NBC"]
p tv_channels.values_at(1, 3, 5) # => ["UPN", "FOX", "ESPN"]
puts


# Using the negative indexing approach:
p tv_channels.values_at(1, -1) # => ["UPN", "ESPN"]
p tv_channels.values_at(-1, 1) # => ["ESPN", "UPN"]
puts


# Returning duplicate values:
p tv_channels.values_at(3, 3) # => ["FOX", "FOX"]
p tv_channels.values_at(5, -1) # => ["ESPN", "ESPN"]
puts


# If trying to access an index position that is invalid, it return nil
p tv_channels.values_at(0, 1, 10) # => ["CBS", "UPN", nil]
p tv_channels.values_at(0, 1, 10, -100) # => ["CBS", "UPN", nil, nil]



#* Overwriting Elements in Array through index positions.

fruits = %w[Apple Orange Grape Banana]

fruits[1] = "Watermelon"
p fruits # => ["Apple", "Watermelon", "Grape", "Banana"]

fruits[4] = "Raspberry"
p fruits # => ["Apple", "Watermelon", "Grape", "Banana", "Raspberry"]

fruits[10] = "Guava"
p fruits # => ["Apple", "Watermelon", "Grape", "Banana", "Raspberry", nil, nil, nil, nil, nil, "Guava"]


#* Accessing and Overwriting Multiple Elements.

sesame_street = %w[Elmo Big-Bird Cookie-Monster Bert Ernie Oscar]

# Bracket Syntax:
sesame_street[3, 2] = %w[Stinky Kermit]
p sesame_street # => ["Elmo", "Big-Bird", "Cookie-Monster", "Stinky", "Kermit", "Oscar"]

# Slice Method:
sesame_street[4, 2] = %w[Bert Ernie Julia]
p sesame_street # => ["Elmo", "Big-Bird", "Cookie-Monster", "Stinky", "Bert", "Ernie", "Julia"]



#* The First and Last method.

sushi = %w[Salmon Tuna Shrimp Eel Yellowtail]

# first method:
p sushi.first # => "Salmon"
p sushi.first(1) # => ["Salmon"]
p sushi.first(3) # => ["Salmon", "Tuna", "Shrimp"]
p sushi.first(4) # => ["Salmon", "Tuna", "Shrimp", "Eel"]
p sushi.first(0) # => []

# last method:
p sushi.last # => "Yellowtail"
p sushi.last(4) # => ["Tuna", "Shrimp", "Eel", "Yellowtail"]
p sushi.last(3) # => ["Shrimp", "Eel", "Yellowtail"]
p sushi.last(1) # => ["Yellowtail"]
p sushi.last(0) # => []



#* The length, size, and count methods in arrays.

# Using the .length method:
puts [1, 2, 3, 4].length # => 4
puts ["Hi", "there", nil].length # => 3
puts [].length # => 0
puts

# Using the .size method:
puts [1, 2, 3, 4].size # => 4
puts ["Hi", "there", nil].size # => 3
puts [].size # => 0
puts

# Using the .count method:
puts [1, 2, 3, 4].count # => 4
puts ["Hi", "there", nil].count # => 3
puts [].count # => 0



#* The empty? and nil? methods.

# Using the empty? method:
puts ["A", "B"].empty? # => false
puts [].empty? # => true
puts [].empty? == 0 # => false
puts

# Using the nil? method:
puts ["A", "B"].nil? # => false
puts [].nil? # => false
puts [].nil? == 0 # => false
puts



#* The Equality and Inequality Operators.

candy = %w[Skittles Starbursts Snickers]
vegetables = %w[Radishes Onions]
desserts = %w[Skittles Starbursts Snickers]
sweets = %w[Skittles Starbursts snickers]

# Using an equality operator: "=="
puts candy == desserts # => true
puts candy == vegetables # => false
puts candy == sweets # => false
puts

# Using an inequality operator: "!="
puts candy != desserts # => false
puts candy != vegetables # => true
puts candy != sweets # => true



#* The Spaceship Operator.

# "<=>" - Returns -1, 0, 1 or nil

# Returns 0 if the two objects that are being compared to one anther are equal:
p 5 <=> 5 # => 0
p [3, 4, 5] <=> [3, 4, 5] # => 0
puts


# Returns -1 if the the value on the left object is lesser than the right:
p 5 <=> 10 # => -1
p [1, 2, 4] <=> [3, 4, 5] # => -1
puts


# Returns 1 if the value on the left object is greater than the right
p 5 <=> 3 # => 1
p [1, 10, 5] <=> [1, 5, 8] # => 1
puts


# Returns nil if the values are incomparable or not valid to compare with
p 5 <=> [1, 2, 3] # => nil
p [nil, 1, 2] <=> [0, 1, 2] # => nil



#* The Push Method and Shovel Operator.

soups = ["French Onion", "Clam Choweder", "Chicken Noodle"]

# Using the push method:
soups.push("Miso")
p soups # => ["French Onion", "Clam Choweder", "Chicken Noodle", "Miso"]

soups.push("Wonton", "Hot and Sour")
p soups # => ["French Onion", "Clam Choweder", "Chicken Noodle", "Miso", "Wonton", "Hot and Sour"]


# Using the shovel operator:

locations = ["Airport", "Bar", "Saloon"]

locations << "House"
p locations # => ["Airport", "Bar", "Saloon", "House"]

locations << "Rodeo" << "Theme Park"
p locations # => ["Airport", "Bar", "Saloon", "House", "Rodeo", "Theme Park"]



#* The Insert Method.

credit_card_transactions = [19.99, 29.43, 3.87]

credit_card_transactions.insert(1, 49.99)
p credit_card_transactions # => [19.99, 49.99, 29.43, 3.87]

credit_card_transactions.insert(0, 1.23, 4.46, 7.89)
p credit_card_transactions # => [1.23, 4.46, 7.89, 19.99, 49.99, 29.43, 3.87]

p [1, 2, 3].insert(8, 1000) # => [1, 2, 3, nil, nil, nil, nil, nil, 1000]



#* The Pop Method.

bubble_tea_flavors = %w[Chocolate Kiwi Peach Plum Strawberry Taro]

# No arguments:
bubble_tea_flavors.pop # => "Taro"
p bubble_tea_flavors # => ["Chocolate", "Kiwi", "Peach", "Plum", "Strawberry"]

# With arguments:
bubble_tea_flavors.pop(1) # => "Strawberry"
p bubble_tea_flavors # => ["Chocolate", "Kiwi", "Peach", "Plum"]

bubble_tea_flavors.pop(2) # => "Plum", "Peach"
p bubble_tea_flavors # => ["Chocolate", "Kiwi"]



#* The Shift and Unshift Methods.

# The shift method removes and returns the first element of the array
# Syntax: array.shift

# The unshift method adds one or more elements to the beginning of the array and returns the new length
# Syntax: array.unshift(element1, element2, ...)

units = %w[meter kilogram second ampere]

# Using the .shift method:
p units.shift # => "meter"
p units # => ["kilogram", "second", "ampere"]

p units.shift(2) # => ["kilogram", "second"]
p units # => ["ampere"]


# Using the .unshift method:
p units.unshift("yard") # => ["yard", "ampere"]
p units # => ["yard", "ampere"]

p units.unshift("inches", "miles") # => ["inches", "miles", "yard", "ampere"]
p units # => ["inches", "miles", "yard", "ampere"]



#* Number Ranges

# A close range - is denoted with ".." which means that this range is inclusive in nature.
# An open range - is denoted with "..." which means that this range is exclusive and therefore excluding the last element.


inclusive_num = 1..5
exclusive_num = 1...5


p inclusive_num # => 1..5
p inclusive_num.class # => Range

p exclusive_num # => 1...5
p exclusive_num.class # => Range

# Invoking the .first and .last methods in Range without proving an argument:
p inclusive_num.first # => 1
p exclusive_num.first # => 1
p inclusive_num.last # => 5
p exclusive_num.last # => 5


# Invoking the .first and .last methods in Ranges with arguments provided:
p inclusive_num.first(3) # => [1, 2, 3]
p exclusive_num.first(3) # => [1, 2, 3]
p inclusive_num.last(3) # => [3, 4, 5]
p exclusive_num.last(3) # => [2, 3, 4]
p inclusive_num.last(1) # => [5]
p exclusive_num.last(1) # => [4]


# Invoking parentheses operator for the purpose of readability:
p (2..1).last # => 1
p (5...13).last # => 13



#* Alphabetical Ranges

alphabet = "a".."z"
puts alphabet # => a..z

p alphabet.class # => Range

# Invoking the .first and .last methods with and without arguments:
p alphabet.first # => "a"
p alphabet.last # => "z"

p alphabet.first(3) # => ["a", "b", "c"]
p alphabet.last(5) # => ["v", "w", "x", "y", "z"]


# Uppercase over Lowercase in terms of precedence
# "A" through "Z" up to "a" through "z"
alphabet = "A".."z"
p alphabet # => "A".."z"

p alphabet.first(40) # => ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "[", "\\", "]", "^", "_", "`", "a", "b", "c", "d", "e", "f", "g", "h"]
p alphabet.last # => "z"



#* Using include?, member? methods and equality operator on Ranges.

alphabet = "a".."z" # => (Inclusive)
#alphabet = "a"..."z" # => (Exclusive)


# Invoking the include? method:
p alphabet.include?("j") # => true
p alphabet.include?("z") # => true
p alphabet.include?("J") # => false


# Invoking the member? method:
p alphabet.member?("j") # => true
p alphabet.member?("z") # => true
p alphabet.member?("J") # => false


# Invoking the equality "===" operator - used for checking whether a particular element is included in the Range
p alphabet === "j" # => true
p alphabet === "z" # => true
p alphabet === "J" # => false



#* Generating Random Numbers.

p rand
p rand(100)
p rand(101)
p rand(1)

p rand.round(4)
p rand.round(2)

# Generating random numbers through Ranges.
p rand(50..100)
p rand(50...60)



#* Extracting Multiple Elements in Ruby using Ranges.

story = "Once upon a time in a land far, far away..."

# Starts from 27th index up to 39th inclusively:
p story[27..39] # => "far, far away"
p story.slice(27..29) # => "far"


# Starts from 27th index up to 39th exclusively:
p story[27...39] # => "far, far awa"
p story.slice(27...29) # => "fa"


# Invoking a Range object even going beyond its limits:
p story[27..200] # => "far, far away..."
p story.slice(27..200) # => "far, far away..."


# Referencing a sequence of characters that we want to overwrite:
story[12..15]
p story # => "Once upon a time in a land far, far away..."


numbers = [1, 3, 5, 7, 9, 15, 21, 18, 6]

p numbers # => [1, 3, 5, 7, 9, 15, 21, 18, 6]
p numbers[4..6] # => [9, 15, 21]
p numbers.slice(4..6) # => [9, 15, 21]



#* Using case statement with Ranges.

# 90 to 100 is an A
# 80 to 89 is a B
# 70 to 79 is a C
# 60 to 79 is a D
# < 60 is an F

def calculate_test_grade(grade)
  case grade
    when 90..100 then "A"
    when 80..89 then "B"
    when 70..79 then "C"
    when 60..79 then "D"
    else "F"
  end
end

p calculate_test_grade(90) # => A
p calculate_test_grade(83) # => B
p calculate_test_grade(78) # => C
p calculate_test_grade(62) # => D
p calculate_test_grade(13) # => F
p calculate_test_grade("Nonsense") # => F



#* Ranges to Arrays.

letters_range = "A".."T"
p letters_range # => "A".."T"
p letters_range.class # => Range
#p letters_range[0] # => NoMethodError, (Bracket syntax is not recognize as a valid method)


letters_array = letters_range.to_a

p letters_array # => ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T"]
p letters_array.class # => Array
p letters_array[0] # => "A"
p letters_array[10] # => "K"


numbers_range = 415...450
p numbers_range.to_a # => [415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449]



#* For Loop in Ruby.

# A sample for loop in Ruby
for number in [1, 2, 3, 4, 5]
  puts number
end

p number # => 5, a data residue that is left from the previous iteration


# Using the each method to do the same operation:
[1, 2, 3, 4, 5].each { |number| puts number } # => (no residue, far better)
puts


# Another example using for loop:
for value in 1..10
  puts "Yay, we're iterating here!"
  puts "We are currently on #{value}"
end
p value # => 10, a data residue left from the previous iteration
puts


# Accomplish the same operation using an each method:
(1..10).each do |range_value|
  puts "Yay, we're iterating here!"
  puts "We are currently on #{range_value}"
end



#* While and Until Loop.

animals = %w[Lion Zebra Baboon Cheetah]

# Using a while loop:
i = 0
while i < animals.length
  puts "The index is #{i} and the animal is #{animals[i]}."

  i += 1 # => (Update the iterating variable)
end
puts


# Using an until loop:
i = 0
until i == animals.length
  puts "The index is #{i} and the animal is #{animals[i]}."

  i += 1
end



#* The index and find_index methods.

colors = %w[Red Blue Green Red]

p colors.index("Green") # => 2
p colors.index("Red") # => 0
p colors.index("Orange") # => nil

p colors.find_index("Green") # => 2
p colors.find_index("Red") # => 0
p colors.find_index("Orange") # => nil



#* The max and min methods.

stock_prices = [434.12, 739.99, 84.12, 649.92]
p stock_prices.min # => 84.12
p stock_prices.max # => 739.99


companies = %w[Nike Microsoft Apple Google]
p companies.min # => "Apple"
p companies.max # => "Nike"


p [].min # => nil
p [].max # => nil



#* The chars method.

vehicle = "Spaceship"

characters = vehicle.chars
p characters # => ["S", "p", "a", "c", "e", "s", "h", "i", "p"]



#* The count method.

p "Hello World".count("l") # =>
p "Hello World".count("w") # =>
p "Hello World".count("lo") # =>
p "Hello World".count("WL") # =>



#* The index and rindex methods.

fact = "I am very handsome."

p fact.index("I") # => 0
p fact.index("e") # => 6
p fact.index("Z") # => nil
p fact.index("am") # => 2
p fact.index("and") # => 11

# Provide a second argument that allow us where to start:
p fact.index("e", 0) # => 6
p fact.index("e", 3) # => 6
p fact.index("e", 6) # => 6
p fact.index("e", 7) # => 17

p fact.rindex("e") # => 17
