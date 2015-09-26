puts "Give us a string!"
string = gets.chomp
puts string

puts string.reverse.upcase
length=string.length*2
space=string.index(" ")
puts string[0...space].capitalize
