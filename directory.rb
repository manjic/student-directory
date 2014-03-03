def print_header
  print "The students of my cohort at Makers Academy \n"
  print "------------- \n"
end

def print_students(students)
  i = 0
  while i < students.length
    student = students[i]
    print "#{student[:name]} (#{student[:cohort]} cohort) #{student[:hobbies]} #{student[:height]} \n" 
    i += 1
  end
end

def print_footer(students)
  print "Overall, we have #{students.length} great students \n"
end

def input_students
  print "Please enter the names of the students \n"
  print "To finish, just hit return twice \n"
  # create an empty array
  students = []
    name = gets.chomp
    puts "Tell us a hobby"
    hobbies = gets.chomp
    puts "How tall are you?"
    height = gets.chomp
      while !name.empty? do
       # add the student hash to the array
       students << {:name => name, :cohort => :february, :hobbies=> hobbies, :height => height}
       print "Now we have #{students.length} students \n"
       # get amother name from the user
       name = gets.chomp
        if name.empty?
          puts "Thanks for the info"
        else   
          puts "Tell us a hobby"
          hobbies = gets.chomp
          puts "How tall are you?"
          height = gets.chomp
        end
      end
  #return the array of students
  students
end


students = input_students
print_header
# print_students(students)
print_footer(students)