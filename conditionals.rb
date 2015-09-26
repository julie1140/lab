
puts "Pick a number: 1 or 2"
number=gets.chomp.to_i

if number==1
  puts "person"

elsif number==2
  puts "people"

else
  puts "Number must equal 1 or 2"
end

puts "Welcome! How many people will be dining today?"
diners=gets.chomp.to_i

if diners==1
  puts "Just you today? Table for one coming up!"

elsif diners>1
  puts "Great! We need a table for #{diners} people today!"

end

#This is an example of a ternary -- putting things into one line

if number==1 then puts "one" else puts "other" end

#You only can use 'then' with if statements when you use a ternary operator -- not good
#practice because it makes code unreadable

  
