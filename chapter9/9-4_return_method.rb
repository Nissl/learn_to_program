def ask_about question
  while true
    puts "Do you " + question + '?'
    reply = gets.chomp.downcase

    if (reply == 'yes' || reply == 'no')
      if reply == 'yes'
        answer = true
      else
        answer = false
      end
      break
    else
      puts 'Please answer "yes" or "no".'
    end
  end
  return answer
end

puts 'Hello, and thanks for taking this survey.'
puts 'Please answer yes or no to the following questions.'

ask_about 'like eating tacos'
ask_about 'like eating burritos'
wets_bed = ask_about 'wet the bed'
ask_about 'like eating chimicherrychangas'
ask_about 'like mexican food in general'

puts "Ha ha, I fooled you! This survey was a total scam!"
if wets_bed
  puts "I knew it! You wet the bed!"
else
  puts "I can\'t believe you don't wet the bed! Just look at you!"
end