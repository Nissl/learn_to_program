puts 'Hello there, what\'s your first name?'
first_name = gets.chomp
puts 'Nice first hame! Now, what\'s your middle name?'
middle_name = gets.chomp
puts 'Excellent middle name! Now,  what\'s your last name?'
last_name = gets.chomp

name_length = first_name.length + middle_name.length + last_name.length
name = first_name + ' ' + middle_name + ' ' + last_name 

puts 'Did you know there are ' + name_length.to_s + ' characters ' 
puts 'in your name, ' + name + '?'

