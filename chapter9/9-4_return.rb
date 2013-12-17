def say_moo moo_num
  puts 'moooooo..... ' * moo_num
  'yellow submarine'
end

puts say_moo 3

puts

def favorite_food name
  if name == 'John'
    return 'Indian'
  end
  if name == 'Pete'
    return 'Thai'
  end

  'I have no idea what I want.'
end

def favorite_drink name
  if name == 'Bill'
    'Cider'
  elsif name == 'Kathryn'
    'Veggie smoothies'
  else
    'Perhaps...horchata?'
  end
end

puts favorite_food('John')
puts favorite_food('Pete')
puts favorite_food('Cher')
puts favorite_drink('Bill')
puts favorite_drink('Kathryn')
puts favorite_drink('Jean-Luc')