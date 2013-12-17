def make_list
  word_list = []
  while true
    input = gets.chomp
    if input.length == 0
      return word_list
    else
      cap = 0
      if input == input.capitalize
        cap = 1
      end
      input.downcase!
      word_list.push([input, cap])
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
    small_word = word_list[0][0]
    loc = 0
    (0..word_list.length - 1).each do |i|
      if word_list[i][0] <= small_word
        small_word = word_list[i][0]
        loc = i
      end
    end
    sorted_list.push([small_word, word_list[loc][1]])
    new_list = []
    (0..word_list.length - 1).each do |i|
      if i != loc
        new_list.push([word_list[i][0], word_list[i][1]])
      end
    end
    word_list = new_list
    return recursive_sort word_list, sorted_list 
  end
end

def re_capitalize sorted_list
  dict_list = []
  sorted_list.each do |word|
    if word[1] == 1
      word[0].capitalize!
    end
    dict_list.push(word[0])
  end
  return dict_list
end  

puts "Come one, come all, see the amazing John\'s alphabetizing program!"
puts "Now with an algorithm that doesn't just convert all of your words to downcase!"
puts "Enter words you would like the program to sort. Press enter on a blank line"
puts "when finished."

word_list = make_list
sorted_list = sort word_list
dict_list = re_capitalize sorted_list

puts "Here\'s the sorted list! Magnificent!"
puts [dict_list]