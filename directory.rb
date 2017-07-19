puts # I like empty lines in my code. It makes it look more open





def input_students
    
    puts "Please enter the name of the students"
    
    puts "to finish, just hit return twice"
    
    

    name = gets.chomp
    
    puts "Please enter the students cohort"
    
    cohort = gets.chomp
    
    puts "Please enter the students birthday"
    
    birth = gets.chomp
    
    puts "Please enter the students height in cm"
    
    height = gets.chomp
    
    
    students = []

    while !name.empty? do
       
       students << {name: name, cohort: cohort, birth: birth, height: height}
        
        
        puts "Now we have #{students.count} students"
    
    
    
# Get another name from the user

    puts "Please enter another name"
    
        name = gets.chomp
       
    puts "Please enter the cohort"
       
       cohort = gets.chomp
      
    puts "Please enter the brithday"
      
        birth = gets.chomp
        
    puts "Please enter the heigth"
        
        height = gets.chomp
        
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
        
        puts "#{index + 1}#{':'} #{student[:name]} (#{student[:cohort]} cohort) (#{student[:birth]} birth) (#{student[:height]} height)"
        

        
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


