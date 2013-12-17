quit_attempts = 0

puts 'HELLO THERE, SONNY!'
while true
  input = gets.chomp
  if input == 'BYE'
    quit_attempts += 1
    if quit_attempts > 2
      break
    end
    puts 'DON\'T LEAVE, GRANDMA IS ALL SAD AND LONELY!'
  elsif input == input.upcase
    puts 'NO, NOT SINCE ' + (rand(21) + 1930).to_s + '!'
  else
    puts 'HUH? SPEAK UP, SONNY!'
  end
end

puts 'BYE, SONNY!'