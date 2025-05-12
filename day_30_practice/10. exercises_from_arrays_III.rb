#* Exercise 1: Implement the "reverse" method.

p [1, 2, 3, 4, 5].reverse #* =>
p [true, false, true, false] #* => 
p ["Mark", "Glenn", "Gabuya"] #* => 

#* Alter permanently the object: 
array = [1, 2, 3, 4, 5, 6]

p array #* => 



puts 
#* Exercise 2: Implement the "sort" method.

#* Sort in ascending order:  
p [5, 4, 3, 2, 1] 

#* Sort in descending order: 
p [5, 4, 3, 2, 1] 

#* Sort alphabetically: 
p ["Hello", "Blah", "Zebra"] #* => ["Blah", "Hello", "Zebra"]

#* Sort in reverse alphabetical: 
p ["Hello", "Blah", "Zebra"] #* => ["Zebra", "Hello", "Blah"]

#* Sort to determine precedence: 
p ["Hello", "Blah", "Zebra", "artist", "zebra"] #* => ["Blah", "Hello", "Zebra", "artist", "zebra"]



puts 
#* Exercise 3: Implement the "uniq" method.

numbers = [1, 8, 3, 2, 3, 8, 1, 8, 9]

p numbers #* => [1, 8, 3, 2, 3, 8, 1, 8, 9]

#* Permanently alter the object: 

p numbers #* => 



puts 
#* Exercise 4: Implement the "compact" method.

p [1, 2, 3.14, false, nil]  #* => [1, 2, 3.14, false]
p [1, nil, nil, 2, 3.14, false, nil]  #* => [1, 2, 3.14, false]
p [1, 2, 3.14, nil, nil, false, nil]  #* => [1, 2, 3.14, false]

p [1, 2, 3]  # => [1, 2, 3]
p []  # => []

#* Permanently alter the object: 
sports = ["Football", "Soccer", nil, "Baseball", nil]

p sports #* => ["Football", "Soccer", "Baseball"]



puts 
#* Exercise 5: Implement the "inject" or "reduce" method: 

#* element = 10, sum = 0, number = 10, sum + number = 10 *Represents what to send to the next loop* 
#* element = 20, sum = 10, number = 20, sum + number = 30 
#* element = 30, sum = 30, number = 30, sum + number = 60 

p [10, 20, 30] #* => 60
p [10, 20, 30] #* => 60

#* Implement with the color_counts: 

color_counts 


p color_counts #* =>{"Red"=>2, "Blue"=>1}


color_counts 

p color_counts #* =>{"Red"=>2, "Blue"=>1}



puts 
#* Exercise 6: Implement the "flatten" method: 

party_attendees = [
  "Joe", 
  ["Bob", "Keith", "Cam"],
  "Holly",
  ["Rick", "Molly"]
]

p party_attendees #* => ["Joe", "Bob", "Keith", "Cam", "Holly", "Rick", "Molly"]



puts 
#* Exercise 7: Implement the "sample" method: 

flavors = ["Chocolate", "Vanilla", "Strawberry", "Cookies and Cream"]
p flavors #* => *Getting a random ice cream flavor*
p flavors #* => *Getting a random ice cream flavor*
p flavors #* => *Getting a random ice cream flavor*
p flavors #* => *Getting a random ice cream flavor*
p flavors #* => *Getting a random ice cream flavor*
p flavors #* => *Getting a random ice cream flavor*



puts 
#* Exercise 8: Multiply array elements using asterisk "*":

p [1, 2, 3]  #* => [1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3]
p ["Mark", "Glenn", "Gabuya"]  #* => ["Mark", "Glenn", "Gabuya", "Mark", "Glenn", "Gabuya"]



puts 
#* Exercise 9: Merge arrays while excluding duplicates:

p [1, 2, 3, 3, 4] [3, 4, 5, 6] #* => [1, 2, 3, 4, 5, 6]

#* Invoke the union ("|" or vertical bar) as a method: 
p [1, 2, 3, 3, 4]   

#* Add more arrays to merge: 
p [1, 2, 3] 



puts 
#* Exercise 10: Remove array elements that exist from another array:

#* Remove the [2, 3] from the first array: 
p [1, 1, 2, 2, 3, 3, 4, 4, 5]  #* => [1, 1, 4, 4, 5]

#* Invoke as a method: 
p [1, 1, 2, 2, 3, 3, 4, 4, 5]  #* => [1, 1, 4, 4, 5]



puts 
#* Exercise 11: Array intersection using the ampersand "&" symbol:

#* Keeping elements from both side or extracting intersection using this 
#* second array: [1, 4, 5, 8, 9]
p [1, 1, 2, 3, 4, 5]  #* => [1, 4, 5]

#* Add more arrays: 
p [1, 1, 2, 3, 4, 5]


#* Invoke as a method: 
p [1, 1, 2, 3, 4, 5].&([1, 4, 5, 8, 9]) #* => [1, 4, 5]


