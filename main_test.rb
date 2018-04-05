# test of Student and StudentDatabase
require './student'
require './student_database'
require './other_probs'
stu = StudentDatabase.new
ops = OtherProbs.new
stu.add("Shalissa", 1, 5, 69)
stu.add("Shalissa", 5, 5, 5)
stu.add("Shalissa", 7, 5, 32)
stu.add("Shalissa", 4, 5, 100)
stu.add("Shalissa", 3, 5, 343)
stu.add("Shalissa", 6, 5, 1)
stu.add("Shalissa", 2, 5, 3)
stu.add("Brian", 20, 518, 90)
id = 4
arr = [4, 5, 7, 6, 4, 3, 9]
testStr = "Potatoes"
puts "Checking for student with id #{id}...\n"
puts stu.find(id)
puts "Top Grade in class: #{stu.top}"
# puts "Sorted Array of student ages:\n#{stu.fill_age}"
puts "Median age: #{stu.calc_median}"
puts "Sum of array is #{ops.sum_arr_elem(arr)}"
puts "String with even(count) characters removed is:\n#{ops.trim_even(testStr)}"