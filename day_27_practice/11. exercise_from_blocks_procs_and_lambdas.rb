#* Exercise 1: Implement a Block with "yield" keyword. 

def pass_control
    puts "I'm at the start of the pass_control method."   
    yield  
end

pass_control { puts "Now, I'm inside the block." }
puts   

pass_control { puts "I am very handsome." }
puts   

pass_control do   
    puts "Hello, line number 1."
    puts "Goodbye, line number 2."
end



#* Exercise 2: Implement a Block with multiple "yield" keyword. 

def pass_control
    puts "I'm at the start of the pass_control method."
    yield  
    puts "Now, I'm back inside the pass_control method."
    yield 
end

pass_control { puts "Now, I'm inside the block." }
puts   

pass_control { puts "I am very handsome." }
puts   

pass_control do    
    puts "Hello, line number 1."
    puts "Goodbye, line number 2."
end



#* Exercise 3: Custom Iterator using "yield". 
def custom_each(array)
    for element in array  
        yield element  
    end
end

custom_each([1, 2, 3]) { |num| puts num }



#* Exercise 4: Block return values. Assign the yield keyword to a variable and interpolate. 
def who_am_i
    puts "Hello there! Let me tell you about myself."
    adjective = yield  
    puts "I am very #{adjective}."
end


who_am_i { "Handsome" }
who_am_i { "Talented" }
puts   



#* Exercise 5: Implement the block_given? method to avoid Exception.  
def pass_control_on_condition
    puts "Inside the method"
    yield if block_given?
    puts "Back inside the method"    
end

pass_control_on_condition { puts "Inside the block." }
puts   



#* Exercise 6: Block Parameters. 

#* Solution: No parameter for method. 
def speak_the_truth
    yield("Mark Glenn")
end


speak_the_truth { |name| puts "#{name} is brilliant." }
speak_the_truth { |name| puts "#{name} is incredible." }


#* Solution: With parameter for method. 
def speak_the_truth

end


speak_the_truth("Mark Glenn") { |name| puts "#{name} is brilliant." }
speak_the_truth("Boris") { |name| puts "#{name} is incredible." }


#* Solution: With many parameters to receive. 
def number_evaluation(num1, num2, num3)
    yield(num1, num2, num3)
end


p number_evaluation(5, 10, 15) { |num1, num2, num3| num1 + num2 + num3 } #* => 30
p number_evaluation(3, 4, 5) { |num1, num2, num3| num1 * num2 * num3  } #* => 60



#* Exercise 7: Implement a custom each method: 

#* Solution: Create a custom iterator: 
def custom_each(elements) 
    i = 0 

    while i < elements.length 
        yield elements[i]

        i += 1
    end

end


custom_each([10, 20, 30]) { |number| puts "The square of #{number} is #{number * number}." }
puts   



def custom_each(strings)
    i = 0 

    while i < strings.length   
        yield strings[i] 

        i += 1
    end

end

custom_each(["Mark", "Glenn", "Gabuya"]) do |name|
    puts "The length of #{name} is #{name.length}."
end



#* Exercise 8: Implement a Proc with currency converter: 

#* Solution: Currency converter. 
to_euros = Proc.new { |currency| currency * 0.97 }
to_rupees = Proc.new { |currency| currency * 86.55 }
to_pesos = Proc.new { |currency| currency * 58.53 }

us_dollars = [10, 20, 30, 40, 50]
more_us_dollars = [70, 80, 90, 100]

p us_dollars.map(&to_euros) #* => 
p us_dollars.map(&to_rupees) #* => 
p us_dollars.map(&to_pesos) #* => 
puts     


#* Solution: Create a function whether an age is a senior. 
is_senior = Proc.new { |age| age > 55 }

ages = [10, 60, 83, 43, 25] 

p ages.select() 
p ages.reject() 



#* Exercise 9: Methods with Proc Parameters. 
def talk_about(name, &my_proc)
    puts "Let me tell you about #{name}."
    my_proc.call(name) 
end

good_thing = Proc.new { |name| puts "#{name} is a jolly good fellow." }
bad_thing = Proc.new { |name| puts "#{name} is a dolt!" }

talk_about("Mark Glenn", &good_thing)
talk_about("Adolf", &bad_thing)
puts    



#* Exercise 10: Implement a Lambda. 
squares_lambda = lambda { |number| number ** 2 }
p [1, 2, 3, 4, 5].map(&squares_lambda) 
p [4, 5, 6, 7].map(&squares_lambda)