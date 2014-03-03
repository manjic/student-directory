def print_header
  print "The students of my cohort at Makers Academy \n".center(40)
  print "------------- \n".center(40)
end

def print_students(students)
  i = 0
  while i < students.length
    student = students[i]
    print "#{student[:name]} (#{student[:cohort]} cohort) #{student[:hobbies]} #{student[:height]} \n".center(40) 
    i += 1
  end
end

def print_footer(students)
  puts ''
  print "Overall, we have #{students.length} great students \n".center(40)
end

def input_students
  puts "Please enter the names of the students".center(40)
  puts "To finish, just hit return twice".center(40)
  # create an empty array
  students = []
    name = gets.chomp
      while !name.empty? do
       # add the student hash to the array
      puts "Which cohort?".center(40)
      cohort = gets.chomp
      cohort + "Default" if cohort.empty?
      puts "Tell us a hobby".center(40)
      hobbies = gets.chomp
      puts "How tall are you?".center(40)
      height = gets.chomp
       if cohort.empty?
        cohort = "Unknown cohort"
       end
      students << {:name => name.to_sym, :cohort => cohort.to_sym, :hobbies=> hobbies.to_sym, :height => height.to_sym}
      puts "Now we have #{students.length} students".center(40)
       # get amother name from the user
      name = gets.chomp
      end
  #return the array of students
  students
end


students = input_students
print_header
print_students(students)
print_footer(students)