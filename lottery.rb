# Input secret number between 1 and 10
mynumber=3
number=0

while number != mynumber
  puts "Guess what my favorite number is between 1 and 10!"
  number=gets.chomp.to_i
    if number==mynumber
      puts "Congrats! You can read minds!"
    else
      puts "Nope! Do you want to guess again [Y/N]?"
      if gets.chomp.upcase=="N"
        break
      end
  end
end
