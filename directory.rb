
def print_header
  puts "The students of my cohort at Makers Academy".center(40)
  puts "-------------".center(40)
end

def print_students(students)
  i = 0
  while i < students.length
    student = students[i]
    puts "#{student[:name]} #{student[:cohort]} #{student[:hobbies]} #{student[:height]}".center(40)
    i += 1
  end
end

def get_month(month)
  months = {
    :january => 1,
    :february => 2,
    :march => 3,
    :april => 4,
    :may => 5,
    :june => 6,
    :july => 7,
    :august => 8,
    :september => 9,
    :october => 10,
    :november => 11,
    :december => 12
  }[month] || 0
end

def list_by_cohort(students)
  students.sort_by do |student|
    get_month student[:cohort]
  end
  print_students(students)
end

def print_footer(students)
  if students.length == 1 
    puts "Overall, we have #{students.length} great student".center(40)
  else puts "Overall, we have #{students.length} great students".center(40)
  end
end

def input_students
  puts "Please enter the names of the students".center(40)
  puts "To finish, just hit return twice".center(40)
  # create an empty array
  students = []
    name = gets.strip
      while !name.empty? do
       # add the student hash to the array
      puts "Which cohort?".center(40)
      cohort = gets.strip
      cohort + "Default" if cohort.empty?
      puts "Tell us a hobby".center(40)
      hobbies = gets.strip
      puts "How tall are you?".center(40)
      height = gets.strip
       if cohort.empty?
        cohort = "Unknown cohort"
       end
      students << {:name => name.to_sym, :cohort => cohort.to_sym, :hobbies=> hobbies.to_sym, :height => height.to_sym}
      puts "Now we have #{students.length} students".center(40)
      # typo
       # get amother name from the user
      name = gets.strip
      end
  #return the array of students
  typo(students)
end

def typo(students)
  puts "If this is correct press yes, or press no to restart".center(40)
  if gets.chomp == "no" 
    students = input_students
  else
    students  
  end
end

def interactive_menu
  students =[]
  loop do
    # print the menu and ask the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
    # read the input and ask the user what to do
    selection = gets.chomp
    # do what the user has asked
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit
    else
       puts "I don't know what you meant. try again"
    end
  end
end

 
students = input_students
if students.length > 0
print_header
list_by_cohort(students)
print_footer(students)
else puts "No data yet"
end
