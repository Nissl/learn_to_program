puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'

if name == 'John'
  puts 'What a lovely name!'
elsif name == 'Katy'
  puts 'What a lovely name!'
elsif name == "Bort" || name == "Fry"
  puts 'You seem a bit cartoonish!'
end