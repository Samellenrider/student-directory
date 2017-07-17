

puts # I like empty lines in my code. It makes it look more open
# All of our students in one array
students = [
    "Dr. Hannibal  Lecter",
    "Darth Vader",
    "Nurse Ratched",
    "Michael Corleone",
    "Alex Delarge",
    "The Wicked Witch of the West",
    "Terminator",
    "Freddy Krueger",
    "The Joker",
    "Joffrey Baratheon",
    "Norman Bates",
    "Patrick Bateman"
]

puts # Ups I did it again

def print_header
    
    puts "The students of Villians Academy"
    puts "_____________"
end

# We print them. Iteration helps

def print(names)
    
    names.each do |name|
        
        puts name
  end
end

def print_footer(names)
    
    
    puts "Overall, we have #{names.count} great students."
    
end



# We call the methods to print everything to the screen
print_header
print(students) # We are passing the students variable to the methods as an argument (names) because the methods don't have acces to local variables defined outside of them
puts # And again
print_footer(students)

puts # And again
