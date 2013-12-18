# I am defining a good shuffle as one in which the order of words is 
# determined purely randomly. This may occasionally result in a list returning
# the same as input ordering, particularly if it's very short.

# Shuffling was tested via the following code:
#
# word_list = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h']
#
# 20.times do
#   shuffled_list = shuffle word_list
#   puts "Here\'s the shuffled list! Magnificent!"
#   puts [shuffled_list]
#end

# Followed by a visual inspection for random ordering.

# The book might hint that there's some sort of automated test to run, but I'm not
# sure what that might be.

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

def shuffle word_list 
  return recursive_shuffle(word_list, [])
end

def recursive_shuffle word_list, shuffled_list
  if word_list.length == 0
    return shuffled_list
  else
    loc = rand(word_list.length)
    shuffled_list.push(word_list[loc])
    new_list = []
    (0..word_list.length - 1).each do |i|
      if i != loc
        new_list.push(word_list[i])
      end
    end
    word_list = new_list
    return recursive_shuffle word_list, shuffled_list 
  end
end


puts "Come one, come all, see the amazing John\'s shuffling program!"
puts "Enter words you would like the program to shuffle. Press enter on a blank line"
puts "when finished."

word_list = make_list
shuffled_list = shuffle word_list

puts "Here\'s the shuffled list!"
puts [shuffled_list]
