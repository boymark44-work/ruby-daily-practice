#* Exercise 1: Declare two methods that implements how a block works in Ruby.
puts "\nImplement a block: "


#* Solution: Print "Hello" 5 times.
def print_five_times
  5.times { print "Hello" }
end


print_five_times # => HelloHelloHelloHelloHello
puts



#* Solution: Use the "num" as the number of times "Money" should be printed:
def money_printer(num)
  num.times { print "Money" }
end

money_printer(3) # => MoneyMoneyMoney
money_printer(5) # => MoneyMoneyMoneyMoneyMoney
p money_printer(0) # => ["", nil]



#* Exercise 2: Using a range-statement, step, to_a, and join methods chained with one another to print even values.
puts "\n\nUsing a range, step, to_a, and join: "

#* Solution: Combine all the methods above to generate the answer.
p (0..10).step(2).to_a.join # => "0246810"

p 0.step(10, 2).to_a.join # => "0246810"


#* Solution: Use .step method to print even elements in a single-line block.
def increments_of_two
  0.step(10, 2) { |num| print num }
end


increments_of_two # => 0246810
puts


#* Solution: Use the .upto method to print even elements in a single-line block.
def increments_of_two
  0.upto(10) { |num| print num if num.even? }
end


puts increments_of_two # => 0246810
puts


#* Solution: Using an empty string to print the even elements.
def increments_of_two
  result_string = "" 

  0.upto(10) { |num| result_string << num.to_s if num.even? }

  result_string
end


puts increments_of_two # => 0246810


#* Solution from Boris: Use the times method 6-times.
def increments_of_two
  6.times { |num| print num * 2 }
end


increments_of_two # => 0246810

