

# lets put all students into an array
students = [
 "Mario Gintili",
 "Mikhail Dubov",
 "Karolis Noreika", 
 "Michael Sidon",
 "Charles De Barros",
 "Ruslan Vikhor",
 "Toby Retallick",
 "Mark Mekhaiel",
 "Sarah Young",
 "Hannah Wight", 
 "Khushkaran Singh",
 "Rick brunstedt",
 "Manjit Singh", 
 "Alex Gaudiosi",
 "Ross Hepburn", 
 "Natascia Marchese",
 "Tiffanie Chia",
 "Matthew Thomas",
 "Freddy McGroarty",
 "Tyler Rollins",
 "Richard Curteis", 
 "Anna Yanova",
 "Andrew Cumine",
]

#and then print them

puts "The students of my cohort at Makers Academy"
puts "-------------"


students.each do |student|
  puts student
end

#finally, we print the total
puts "Overall, we have #{students.length} great students"


