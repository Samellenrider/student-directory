puts # I like empty lines in my code. It makes it look more open


def input_students
    
    puts "Please enter the name of the students"
    
    puts "to finish, just hit return twice"
    
# Create an empty array
    students = []
    
# Get the first name
    name = gets.chomp
    
# While the name is filled, repeat this code
    while name.start_with?('S') do
        # Add the hash to the array
        students << {name: name, cohort: :July}
        
        puts "Now we have #{students.count} students"
        
# Get another name from the user
        name = gets.chomp
    end
# Return the array of students
    students
end
    

puts # Ups I did it again

def print_header
    
    puts "The students of Villians Academy"
    puts "_____________"
end

# We print them. Iteration helps

def print(students)
    
    students.each_with_index do |student, index|
    
         puts "#{index + 1}#{':'} #{student[:name]} (#{student[:cohort]} cohort) "
        
  end
end

def print_footer(students)
    
    puts "Overall, we have #{students.count} great students."
    
end

# We call the methods to print everything to the screen

   students = input_students

   print_header

   print(students)
   
puts # And again

   print_footer(students)

puts # And again

