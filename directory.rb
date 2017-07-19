puts # I like empty lines in my code. It makes it look more open





def input_students
    
    puts "Please enter the name of the students"
    
    puts "to finish, just hit return twice"
    
    students = []  # Create an empty array
    
# Get the first name
    name = gets.chomp
    
# While the name is filled, repeat this code
    while !name.empty? do
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
        
        if student[:name].start_with?('S')
    
      puts "#{index + 1}#{':'} #{student[:name]} (#{student[:cohort]} cohort) "
        
  end
 end
end

def print_footer(students)
    
    if students == 1
       
       puts "overall, we have #{students.count} great student."
    
    else
    
    
       puts "Overall, we have #{students.count} great students."
  end
end

# We call the methods to print everything to the screen

   students = input_students

   print_header

   print(students)
   
puts # And again

   print_footer(students)

puts # And again


