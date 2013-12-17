while true
  puts 'What would you like to ask JMo to do?'
  request = gets.chomp
  puts 'You say, "JMo, please ' + request + '"'
  puts 'JMo\'s response:'
  puts '"JMo ' + request + '."'
  puts '"Dada ' + request + ', too."'
  puts '"Mama ' + request + ', too."'
  puts '"Nina ' + request + ', too."'
  puts '"Nana ' + request + ', too."'
  puts '"Omi ' + request + ', too."'
  puts
  if request == 'stop'
    break
  end
end