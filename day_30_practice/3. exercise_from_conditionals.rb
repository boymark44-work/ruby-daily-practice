#* Exercise 1: Calling a method from another method.
puts "\nCalling a method from another method: "

#* Solution: Implement a simple calculator using an if-else statements.
def add(a, b)
  a + b
end

def sub(a, b)
  a - b
end

def mul(a, b)
  a * b
end

def div(a, b)
  a / b
end

#* Write your function here: 
def custom_calculator(num1, num2, operation)

  if operation == "add"
    add(num1, num2)
  elsif operation == "subtract"
    sub(num1, num2)
  elsif operation == "multiply"
    mul(num1, num2)
  elsif operation == "divide"
    if num2.zero?
      "Cannot be divided by zero"
    else
      div(num1, num2)
    end
  else 
    "Invalid Operation"
  end

end


puts custom_calculator(3, 5, "add") # => 8
puts custom_calculator(2, 5, "subtract") # => -13
puts custom_calculator(3, 5, "multiply") # => 15
puts custom_calculator(20, 4, "divide") # => 5
puts custom_calculator(16, 0, "divide") # => "Cannot be divided by zero"
puts custom_calculator(24, 56, "cannot_be") # => "Invalid Operation"
puts



#* Solution: Use symbols for naming operations and implement using case operation: 
def add(a, b)
  a + b
end

def sub(a, b)
  a - b
end

def mul(a, b)
  a * b
end

def div(a, b)
  a / b
end

#* Write your function here: 
def custom_calculator2(num1, num2, operation)

  case operation
  when :add then add(num1, num2)
  when :subtract then sub(num1, num2)
  when :multiply then mul(num1, num2)
  when :divide then num2.zero? ? "Cannot be divided by zero" : div(num1, num2)
  else "Invalid Operation"
  end

end


puts custom_calculator2(3, 5, :add) # => 8
puts custom_calculator2(2, 5, :subtract) # => -13
puts custom_calculator2(3, 5, :multiply) # => 15
puts custom_calculator2(20, 4, :divide) # => 5
puts custom_calculator2(16, 0, :divide) # => "Cannot be divided by zero"
puts custom_calculator2(24, 56, :cannot_be) # => "Invalid Operation"
puts



#* Solution: Utilize the guard clauses to handle edge cases early or validation process then subsequently do the actual calculation via "case" operation.
def add(a, b)
  a + b
end

def sub(a, b)
  a - b
end

def mul(a, b)
  a * b
end

def div(a, b)
  a / b
end

#* Write your function here: 
def custom_calculator3(num1, num2, operation)
  return "Invalid Operation" unless ["add", "subtract", "multiply", "divide"].include?(operation)
  return "Cannot be divided by zero" if num2.zero? and operation == "divide"

  case operation
  when "add" then add(num1, num2)
  when "subtract" then sub(num1, num2)
  when "multiply" then mul(num1, num2)
  when "divide" then div(num1, num2)
  end

end

puts custom_calculator3(3, 5, "add") # => 8
puts custom_calculator3(2, 5, "subtract") # => -13
puts custom_calculator3(3, 5, "multiply") # => 15
puts custom_calculator3(20, 4, "divide") # => 5
puts custom_calculator3(16, 0, "divide") # => "Cannot be divided by zero"
puts custom_calculator3(24, 56, "cannot_be") # => "Invalid Operation"
puts



#* Exercise 2: Multiple Conditions.
puts "\n\nMultiple Conditions: "

# Define a divisible_by_three_and_four method that
# accepts a number as its argument.
# It should return true if the number is evenly divisible by both 3 and 4.
# It should return false otherwise.

#* Solution:
def divisible_by_three_and_four(num)
  num % 3 == 0 and num % 4 == 0
end

puts divisible_by_three_and_four(3) # => false
puts divisible_by_three_and_four(4) # => false
puts divisible_by_three_and_four(12) # => true
puts divisible_by_three_and_four(18) # => false
puts divisible_by_three_and_four(24) # => true
puts


# Declare a string_theory function that accepts a string as an argument.
# It should return true if the string has more than 4 characters
# or if the string includes the character "B" (capital).

#* Solution:
def string_theory(string)
  string.length > 4 or string.include?("B")
end

puts string_theory("Big Mac") # => true
puts string_theory("Bank") # => true
puts string_theory("refrigerator") # => true
puts string_theory("boy") # => false
puts string_theory("car") # => false



#* Exercise 3: If-statements.
puts "\n\nIf-Statements: "

# Define a even_or_odd_operations method that accepts an integer.
# If the integer is even, the method should return the number + 2
# If the integer is odd, the method should return the number - 3

#* Solution:
def even_or_odd_operations(int)
  if int.even? 
    int + 2
  else 
    int - 3
  end
end

puts even_or_odd_operations(2) # => 4
puts even_or_odd_operations(0) # => 2
puts even_or_odd_operations(13) # => 10
puts even_or_odd_operations(9) # => 6



#* Exercise 4: If-Elsif-Else Statements.
puts "\n\nIf-Elsif-Else Statements: "

# Declare a numeric_energy function that accepts a number.
# If the number is positive, return the string "Positive"
# If the number is negative, return the string "Negative"
# If the number is zero, return the string "Zero Hero"

#* Solution:
def numeric_energy(num)
  if num.positive?
    "Positive"
  elsif num.negative?
    "Negative"
  else
    "Zero Hero"
  end
end


puts numeric_energy(5) # => Positive
puts numeric_energy(10) # => Positive
puts numeric_energy(-5) # => Negative
puts numeric_energy(-8) # => Negative
puts numeric_energy(0) # => Zero Hero
puts


#* Solution: Solving Numeric Energy using "case method" for better readability.
def numeric_energy(num)
  case 
  when num.positive? then "Positive"
  when num.negative? then "Negative"
  else "Zero Hero"
  end
end


puts numeric_energy(5) # => Positive
puts numeric_energy(10) # => Positive
puts numeric_energy(-5) # => Negative
puts numeric_energy(-8) # => Negative
puts numeric_energy(0) # => Zero Hero
