def counting_game(players=10, count=100)
	puts "\n -- Starting Game -- \n"
	puts " -- Players: #{players} -- \n"
	puts " -- Count: #{count} -- \n\n"

	count += 1
	person = 1
	direction = 1
	(1...count).each do |i|
		multipleOf7 = (i % 7 == 0)
		multipleOf11 = (i % 11 == 0)

		m7 = (multipleOf7) ? ' *7 ' : ''
		m11 = (multipleOf11) ? ' *11 ' : ''

		increment = (multipleOf11) ? 2 : 1

		puts "Person #{person.to_s} said #{i.to_s}  #{m7}#{m11}"
		direction = -direction if multipleOf7

		puts " -- Switching directions -- " if multipleOf7
		puts " -- Skipping next person -- " if multipleOf11
		
		if direction > 0
			person += increment
		else
			person -= increment
		end

		if person > players
			person = person - players
		elsif person < 1
			person = players + person
		end
	end
	puts "\n -- Game Over -- \n"
	puts "------------------------\n"
end

counting_game
counting_game(2, 50)
counting_game(20, 200)