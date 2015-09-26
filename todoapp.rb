=begin
Ask the user what they need to do today.
Repeat step 1 two more times
Tell the user what their todo list is.
Brainstorm: how do we handle a two todo items? four?
=end

array=Array.new
3.times do
puts "What do you need to do today?"
array << gets.chomp #you can also use: array.push todo
end

=begin
Multiple different ways to print out the array

puts array
puts "Your todo list is #{array}"
puts "Your todo list is to #{array[0]}, #{array[1]}, #{array[2]}"
puts array.sort
=end

puts "Your todo list is to #{array.join(", ")}."
puts "Your todo list:"
  array.each do |item|
    puts "-------------"
    puts item
  end     


=begin
array.slice! 2
puts "------------------"
puts array
=end
