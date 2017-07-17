

puts # I like empty lines in my code. It makes it look more open
# All of our students in one array
students = [

{name: "Dr. Hannibal Lecter", cohort: :July},
{name: "Darth Vader", cohort: :July},
{name: "Nurse Ratched", cohort: :July},
{name: "Michael Corleone", cohort: :July},
{name: "Alex DeLarge", cohort: :July},
{name: "The Wicked Witch of the West", cohort: :July},    # we store the cohort month as a symbol because we won't expect to treat is as a string
{name: "Termiator", cohort: :July},
{name: "Freddy Krueger", cohort: :July},
{name: "The Joker", cohort: :July},
{name: "Joffrey Baratheon", cohort: :July},
{name: "Norman Bates", cohort: :July},
{name: "Patrick Bateman", cohort: :July}

]

puts # Ups I did it again

def print_header
    
    puts "The students of Villians Academy"
    puts "_____________"
end

# We print them. Iteration helps

def print(students)
    
    students.each do |student|
        
        puts "#{student[:name]} (#{student[:cohort]} cohort)"
        
  end
end

def print_footer(students)
    
    
    puts "Overall, we have #{students.count} great students."
    
end

# We call the methods to print everything to the screen

   print_header

   print(students) # We are passing the students variable to the methods as an argument (names) because the methods don't have acces to local variables defined outside of them

puts # And again

   print_footer(students)

puts # And again
