item_list = []
puts "Come one, come all, see the amazing John\'s alphabetizing mechanical turk!"
puts "Enter words you would like the turk to sort. Press enter on a blank line"
puts "when finished."

while true
  input = gets.chomp.downcase
  if input.length == 0
    break
  else
    item_list. << input
  end
end

item_list.sort!

puts "Here\'s the sorted list! Magnificent!"
puts [item_list]
