def make_list
  word_list = []
  while true
    input = gets.chomp.downcase
    if input.length == 0
      return word_list
    else
      word_list.push(input)
    end
  end
end

# Still feel like this could be shorter, not sure how.
def sort_list(word_list)
  sorted_list = []
  while word_list.length > 0
    small_word = word_list[0]
    word_list.each do |word|
      if word < small_word
        small_word = word
      end
    end
    sorted_list << word_list.slice!(word_list.index(small_word))
  end
  return sorted_list
end

puts "Come one, come all, see the amazing John\'s alphabetizing program!"
puts "Now with a manually coded algorithm!"
puts "Enter words you would like the program to sort. Press enter on a blank line"
puts "when finished."

word_list = make_list
sorted_list = sort_list(word_list)

puts "Here\'s the sorted list! Magnificent!"
puts [sorted_list]
