puts 'What\'s your favorite number, my friend?'
fav_num = gets.chomp.to_i
fav_num = fav_num + 1
puts ('That\'s an awesome number, but perhaps you might possibly consider ' + 
		fav_num.to_s + ' as an even better option?')
