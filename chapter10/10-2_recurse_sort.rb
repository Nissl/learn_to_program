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

def sort word_list
  return recursive_sort(word_list, [])
end

def recursive_sort word_list, sorted_list
  if word_list.length == 0
    return sorted_list
  else
    small_word = word_list[0]
    loc = 0
    (0..word_list.length - 1).each do |i|
      if word_list[i] <= small_word
        small_word = word_list[i]
        loc = i
      end
    end
    sorted_list.push(small_word)
    new_list = []
    (0..word_list.length - 1).each do |i|
      if i != loc
        new_list.push(word_list[i])
      end
    end
    word_list = new_list
    return recursive_sort word_list, sorted_list 
  end
end


puts "Come one, come all, see the amazing John\'s alphabetizing program!"
puts "Now with a manually coded recursive algorithm!"
puts "Enter words you would like the program to sort. Press enter on a blank line"
puts "when finished."

word_list = make_list
sorted_list = sort word_list

puts "Here\'s the sorted list! Magnificent!"
puts [sorted_list]