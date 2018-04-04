require './student'
require './student_database'
s_data = StudentDatabase.new
s_data.add("Shalissa", 1, 5, 69)
s_data.add("Shalissa", 5, 5, 5)
s_data.add("Shalissa", 7, 5, 32)
s_data.add("Shalissa", 4, 5, 100)
s_data.add("Shalissa", 3, 5, 343)
s_data.add("Shalissa", 6, 5, 1)
s_data.add("Shalissa", 2, 5, 3)
s_data.add("Brian", 20, 518, 90)
id = 4
puts "Checking for student with id #{id}...\n"
puts s_data.find(id)
puts "Top Grade in class: #{s_data.top}"
puts "Sorted Array of student ages:\n#{s_data.fill_age}"
puts "Median age: #{s_data.calc_median}"