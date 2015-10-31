# Hash Challenge: Driver's License

# This is an array of hashes
roster=Array.new

puts "Welcome to GA Student Roster!"

response="Y"

until response=="N"
  puts "Would you like to add a student? Please select [Y/N]"
  response=gets.chomp.to_s.capitalize

  if response=="Y"
    puts "What is the student's name?"
    name_response=gets.chomp
    puts "For which class?"
    gaclass_response=gets.chomp

    student={name: name_response, gaclass: gaclass_response}
    #Add student to roster
    roster << student
    end

end

roster.each do |student|
puts "#{student[:name]} - #{student[:gaclass]}"
end


#Alternative Code:

until response=="N"
  student={}
  puts "Would you like to add a student? Please select [Y/N]"
  response=gets.chomp.to_s.capitalize

  if response=="Y"
    puts "What is the student's name?"
    student[:name]=gets.chomp
    puts "For which class?"
    student[:gaclass]=gets.chomp

    #Add student to roster
    roster << student
    end

end

roster.each do |student|
puts "#{student[:name]} - #{student[:gaclass]}"
end
