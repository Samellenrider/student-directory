
@students = []
puts

def input_students
    
    puts "Please enter the name of the students".center(50)
    
    puts "to finish, just hit return twice".center(50)
    
    name = STDIN.gets.strip
    
    if name == ""
        
        puts exit
    
    else
    
    
    puts "Please enter the students cohort".center(50)
    
    cohort = STDIN.gets.strip
    
   end


    
while !name.empty? do
       
       recruit_students(name, cohort)
    
    if @students.count == 1
        
    puts "Now we have #{@students.count} student".center(50)
    
    else
        
    puts "Now we have #{@students.count} students".center(50)

end
    # We need the users infformation about the other students

    puts "Please enter another name".center(50)
    
        name = STDIN.gets.strip
       
    puts "Please enter the cohort".center(50)
       
      cohort = STDIN.gets.strip
      
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
    puts "3. Save a list of students"
    puts "4. Load a list "
    puts "9. Exit"
end

selection = STDIN.gets.chomp

def process(selection)
    case selection
   when "1"
        students = input_students
   when "2"
        show_students
   when "3"
        save_students_to_file
   when "4"
        load_students_from_file
   when "9"
        exit
   else
        puts "I don't know what you meant, try again"
        
  end
end
puts



def print_student_list
    
    puts "The students of Villians Academy".center(50)
    puts "_________________________________________".center(50)
    puts


    @students.each_with_index do |student, index|
        
        puts "#{index + 1}#{':'} #{student[:name]} (#{student[:cohort]} cohort)".center(50)
puts
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

    print_student_list
puts
    print_footer


end

def save_students_to_file
    
puts "You want to save your list? Please enter a filename."

file = File.open("#{gets.chomp}", "w")

    @students.each do |student|
        student_data = [student[:name], student[:cohort]]
        csv_line = student_data.join(",")
        file.puts csv_line
    end
    puts "Students succesfully saved"
   file.close
 end



def load_students_from_file
    
    puts "Please enter the filename you want to load. Don\'t forget its codicil!"
    
    filename = gets.chomp
    
    file = File.open(filename, "r")
    file.readlines.each do |line|
    name, cohort = line.chomp.split(',')
    
       recruit_students(name, cohort)
   end
    file.close
puts "Students succesfully loaded"
end


def recruit_students(name, cohort)
    
    @students << {name: name, cohort: cohort}
    
end

def try_load_students
    
    if ARGV
        
        filename = "students.csv"
    
    else
    
        filename = ARGV.first
    
    end
    
    return if filename.nil?
    if File.exists?(filename)
        
      puts "Loaded #{@students.count} from #{filename}"
    else
      puts "Sorry, #{filename} doesn't exitst."
      exit
  end
end


 try_load_students

 interactive_menu

























