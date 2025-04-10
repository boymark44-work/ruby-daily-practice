#* Exercise 1: Implement a Block with "yield" keyword. 



pass_control 
puts   

pass_control
puts   

pass_control do   

end



#* Exercise 2: Implement a Block with multiple "yield" keyword. 



pass_control 
puts   

pass_control
puts   

pass_control do    

end



#* Exercise 3: Custom Iterator using "yield". 



custom_each([1, 2, 3]) {}



#* Exercise 4: Block return values. Assign the yield keyword to a variable and interpolate. 



who_am_i {}
who_am_i {}
puts   



#* Exercise 5: Implement the block_given? method to avoid Exception.  



pass_control_on_condition {} 



#* Exercise 6: Block Parameters. 

#* Solution: No parameter for method. 



speak_the_truth { |name| }
speak_the_truth { |name| }


#* Solution: With parameter for method. 



speak_the_truth() { || }
speak_the_truth() { || }


#* Solution: With many parameters to receive. 



p number_evaluation() { || }
p number_evaluation() { || }



#* Exercise 7: Implement a custom each method: 

#* Solution: Create a custom iterator: 



custom_each([]) { |number| }
puts   


custom_each([]) do |name|

end



#* Exercise 8: Implement a Proc with currency converter: 

#* Solution: Currency converter. 
to_euros 
to_rupees 
to_pesos 




p us_dollars.map() #* => 
p us_dollars.map() #* => 
p us_dollars.map() #* => 
puts     


#* Solution: Create a function whether an age is a senior. 
is_senior 


p ages.select() 
p ages.reject() 



#* Exercise 9: Methods with Proc Parameters. 


talk_about()
talk_about()
puts    



#* Exercise 10: Implement a Lambda. 
squares_lambda 


p [1, 2, 3, 4, 5].map() 

