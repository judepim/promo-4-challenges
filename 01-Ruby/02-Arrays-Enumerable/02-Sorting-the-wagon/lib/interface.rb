require_relative "wagon_sort"

# TODO: Ask the user about students to add to the Wagon.
#       Remember, to read an input from the command line, use:
#       - `gets`:  http://www.ruby-doc.org/core-2.1.2/Kernel.html#method-i-gets
#       - `chomp`: http://www.ruby-doc.org/core-2.1.2/String.html#method-i-chomp

students = []
name = "0"

while name.length != 0
  puts "type a student name"
  name = gets.chomp
  if name != ""
    students << name
  end
end

student_number = wagon_sort(students)

puts "Congratulations! Your Wagon has #{student_number.size} students:"
if student_number.size >= 2
  puts "#{student_number[0..-2].join(', ')} and #{student_number.last}"
else
  puts student_number.first
end

