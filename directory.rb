

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

puts "Students of Villians Academy"
puts "_____________"
# We print them. Iteration helps

students.each do |student|

    puts student

end

puts # And again

# We print the total

puts "Overall, we have #{students.count} great students. "

puts # And again
