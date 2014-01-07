# Refactored after seeing a better solution than passing
#   caps info along with each word in one of the student
#   repositories that was getting complements.
def make_list
  word_list = []
  while true
    input = gets.chomp
    if input.length == 0
      return word_list
    else
      word_list << input
    end
  end
end

def sort(word_list)
  return recursive_sort(word_list, [])
end

def recursive_sort(word_list, sorted_list)
  if word_list.length == 0
    return sorted_list
  else
    small_word = word_list[0].downcase
    word_list.each do |word|
      if word.downcase < small_word.downcase
        small_word = word
      end
    end
    if small_word.downcase == word_list[0].downcase
      small_word = word_list[0]
    end
    sorted_list << word_list.slice!(word_list.index(small_word))
    return recursive_sort word_list, sorted_list 
  end
end


puts "Come one, come all, see the amazing John\'s alphabetizing program!"
puts "Now with an algorithm that doesn't just convert all of your words to downcase!"
puts "Enter words you would like the program to sort. Press enter on a blank line"
puts "when finished."

word_list = make_list
#word_list = ['Doggie', 'zed', 'Alpha', 'Omega', 'silly', 'wang', 'doodle', 'beta']
sorted_list = sort(word_list)

puts "Here\'s the sorted list! Magnificent!"
puts [sorted_list]