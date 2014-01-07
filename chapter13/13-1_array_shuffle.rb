class Array
  def shuffle  
    return recursive_shuffle(self, [])
  end

  def recursive_shuffle(word_list, shuffled_list)
    if word_list.length == 0
      return shuffled_list
    else
      shuffled_list << word_list.slice!(rand(word_list.length))
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