students = [
 [:name => "Mario Gintili",  :cohort => :february],
 {:name => "Mikhail Dubov",  :cohort => :february},
 {:name => "Karolis Noreika", :cohort =>:february},
 {:name => "Michael Sidon",   :cohort => :february},
 {:name => "Charles De Barros", :cohort => :february},
 {:name => "Ruslan Vikhor",  :cohort => :february},
 {:name => "Toby Retallick",  :cohort =>:february},
 {:name => "Mark Mekhaiel",  :cohort =>:february},
 {:name => "Sarah Young",  :cohort => :february},
 {:name => "Hannah Wight",  :cohort => :february},
 {:name => "Khushkaran Singh",  :cohort=> :february},
 {:name => "Rick brunstedt",  :cohort => :february},
 {:name => "Manjit Singh",  :cohort => :february},
 {:name => "Alex Gaudiosi",   :cohort => :february},
 {:name => "Ross Hepburn",   :cohort => :february},
 {:name => "Natascia Marchese",  :cohort => :february},
 {:name => "Tiffanie Chia",  :cohort => :february},
 {:name => "Matthew Thomas",   :cohort => :february},
 {:name => "Freddy McGroarty",  :cohort => :february},
 {:name => "Tyler Rollins",   :cohort =>:february},
 {:name => "Richard Curteis",   :cohort => :february},
 {:name => "Anna Yanova",  :cohort => :february},
 {:name => "Andrew Cumine",  :cohort => :february}
] 

def puts_header
  puts "The students of my cohort at Makers Academy"
  puts "-------------"
end

def puts_students(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def puts_footer(students)
  puts "Overall, we have #{students.length} great students"
end


def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  #while name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {:name => name, :cohort => :february}
    puts "Now we have #{students.length} students"
    # get amother name from the user
    name = gets.chomp
  end
  #return the array of students
  students
end

students = input_students
puts_header
puts_students(students)
puts_footer(students)
