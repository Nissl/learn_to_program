puts 'Hello, and welcom to seventh grade English.'
puts 'My name is Ms. Salvalas, and I\'m actually a worse writer than you. What\'s your name?'
name = gets.chomp

if name == name.capitalize
  puts 'Please take a seat, ' + name + "."
else
  puts name + '? You mean ' + name.capitalize + ', right?'
  puts 'Don\'t you even know proper capitalization protocols?'
  reply = gets.chomp
  if reply.downcase == 'yes'
    # She's civil but crazy.
    puts 'Hmmph! Well, sit down! Wait, how did I know you didn\'t capitalize your name?'
  else
    # She's pissed.
    puts 'Go back to sixth grade, stupid!'
  end
end
