=begin
Write a program that does the following:

Creates an empty hash
Asks the user what artist they want to see. Save the answer in your hash.
Asks the user what venue they want to go to. Save the answer in your hash.
Asks the user whether they want VIP or GA ticket. Save the answer in your hash.
Iterate over the hash to output the ticket details.
You can use this starter code:

artists = ['Beyonce', 'Run The Jewels', 'Kings of Leoon']
venues = ['Hollywood Bowl', 'The El Rey', 'The Greek']
ticket_types = ['General Admission', 'VIP']

=end


artists = ['Beyonce', 'Run The Jewels', 'Kings of Leoon']
venues = ['Hollywood Bowl', 'The El Rey', 'The Greek']
ticket_types = ['General Admission', 'VIP']

concert=Hash.new {|artist, venue, ticket| }

puts "What artist do you want to see? The choices are:"
artists.each {|artist| puts artist}

artist_choice=gets.chomp.to_s
