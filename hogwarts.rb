=begin
Write a program that does the following using an Array:

Remind Professor Snape to check if Ron is present.
Remind Professor Snape to check if Harry is present.
Remind Professor Snape to check if Hermione is present.
Stretch At the beginning of the program, allow Professor Snape to add a
fourth student to his Student Tracking list before reminding him to check for
each student.
=end
=begin
puts "Hello there, Professor Snape!"

students=["Ron", "Harry", "Hermione"]
students.each do |student|
  puts "Make sure to see if #{student} is present."
  sleep 3
end
=end

#Stretch code below
=begin
students=["Ron", "Harry", "Hermione"]
puts "Hello Professor Snape!"
puts "Would you like to add another student to your checklist? [Y/N]"
answer=gets.chomp.to_s.upcase

  if answer=="Y"
    puts "What is the student's first name?"
    students << gets.chomp.to_s
  end

  students.each do |student|
    puts "Make sure to see if #{student} is present."
    sleep 2
  end
=end

#Stretch code - adding multiple students

students=[]

puts "Hello Professor Snape! Would you like to add students to your checklist
today? Please answer [Y/N]"
answer=gets.chomp.to_s.upcase

  if answer=="Y"
    puts "How many students would you like to add?"
    number=gets.chomp.to_i

    number.times do
    puts "what is the student's first name?"
    students << gets.chomp.to_s
      end
    end

  students.each do |student|
    puts "Make sure to see if #{student} is present."
    sleep 2
  end
