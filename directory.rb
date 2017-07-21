
@students = []
puts

def input_students
    
    puts "Please enter the name of the students".center(50)
    
    puts "to finish, just hit return twice".center(50)
    
    name = gets.strip
    
    if name == ""
        
        puts exit
    
    else
    
    
    puts "Please enter the students cohort".center(50)
    
    cohort = gets.strip
    
   end


    
while !name.empty? do
       
       @students << {name: name, cohort: cohort}
    
    if @students.count == 1
        
    puts "Now we have #{@students.count} student".center(50)
    
    else
        
    puts "Now we have #{@students.count} students".center(50)

end
    # We need the users infformation about the other students

    puts "Please enter another name".center(50)
    
        name = gets.strip
       
    puts "Please enter the cohort".center(50)
       
      cohort = gets.strip
      
  end
  @students
end



def interactive_menu
    loop do
        print_menu
        process(gets.chomp)
  end
end


def print_menu
    puts "1. Input the students"
    puts "2. Show the students"
    puts "3. Save the list to students.csv"
    puts "9. Exit"
end

selection = gets.chomp

def process(selection)
    case selection
   when "1"
        students = input_students
   when "2"
        show_students
   when "3"
        save_students
   when "9"
        exit
   else
        puts "I don't know what you meant, try again"
        
  end
end
puts

def print_header
    
    puts "The students of Villians Academy".center(50)
    puts "_________________________________________".center(50)
    puts
end

def print_student_list

    @students.each_with_index do |student, index|
        
        puts "#{index + 1}#{':'} #{student[:name]} (#{student[:cohort]} cohort)".center(50)
        
end
 
@students

def print_footer
    
    if @students.count == 1
        
       puts "Overall, we have #{@students.count} great student.".center(50)
    
    else
    
       puts "Overall, we have #{@students.count} great students.".center(50)
  end
end
end



def show_students
  print_header
puts
  print_student_list
puts
  print_footer
puts
end

def save_students
    
    file = File.open("students.csv", "w") #open the file for writinng
    
    @students.each do |student| #iterate over the array of students
        student_data = [student[:name], student[:cohort]]
        csv_line = student_data.join(",")
        file.puts csv_line
    end
    file.close
end
    


 interactive_menu






































