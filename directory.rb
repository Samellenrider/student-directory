puts # I like empty lines in my code. It makes it look more open

def input_students
    
    puts "Please enter the name of the students".center(50)
    
    puts "to finish, just hit return twice".center(50)
    
    name = gets.chomp
    
    puts "Please enter the students cohort".center(50)
    
    cohort = gets.chomp
    
    puts "Please enter the students birthday".center(50)
    
    birth = gets.chomp
    
    puts "Please enter the students height in cm".center(50)
    
    height = gets.chomp
    
    
    students = []

while !name.empty? do
       
       students << {name: name, cohort: cohort, birth: birth, height: height}
        
        
    puts "Now we have #{students.count} students".center(50)
    
    # We need the users infformation about the other students

    puts "Please enter another name".center(50)
    
        name = gets.chomp
       
    puts "Please enter the cohort".center(50)
       
      cohort = gets.chomp
      
    puts "Please enter the brithday".center(50)
      
       birth = gets.chomp
        
    puts "Please enter the heigth".center(50)
        
      height = gets.chomp
        
  end

    students

end
    

puts # Ups I did it again

def print_header
    
    puts "The students of Villians Academy".center(50)
    puts "_________________________________________".center(50)
    puts
end

# We print them. Iteration helps



def print(students)

    
    students.each_with_index do |student, index|
        
        puts "#{index + 1}#{':'} #{student[:name]} (#{student[:cohort]}) (#{student[:birth]} birth) (#{student[:height]} height)".center(50)
        

        
  end
 
end

def print_footer(students)
    
    if students.count == 1
        
       puts "Overall, we have #{students.count} great student.".center(50)
    
    else
    
       puts "Overall, we have #{students.count} great students.".center(50)
  end
end

# We call the methods to print everything to the screen

   students = input_students

   print_header

   print(students)
   
puts # And again

   print_footer(students)

puts # And again


