item_list = []
puts "Come one, come all, see the amazing John\'s alphabetizing mechanical turk!"
puts "Enter words you would like the turk to sort. Press enter on a blank line"
puts "when finished."

while true
  input = gets.chomp
  if input.length == 0
    break
  else
    item_list.push(input)
  end
end

item_list.sort!

puts "Here\'s the sorted list! Magnificent!"
puts [item_list]
# while item_list.length > 0
#   puts item_list.pop
# end