class Array
  def shuffle  
    return recursive_shuffle(self, [])
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
end

puts [1, 2, 3, 4, 5].shuffle
puts [1, 2, 3, 4, 5].shuffle
puts [1, 2, 3, 4, 5].shuffle
puts [1, 2, 3, 4, 5].shuffle
puts [1, 2, 3, 4, 5].shuffle
puts [1, 2, 3, 4, 5].shuffle
puts [1, 2, 3, 4, 5].shuffle
puts [1, 2, 3, 4, 5].shuffle