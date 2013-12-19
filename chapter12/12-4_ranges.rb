letters = 'j'..'m'

puts(['j', 'k', 'l', 'm'] == letters.to_a)
('J'..'M').each do |letter|
  print letter
end
puts

the_90s = 1990..1999
puts the_90s.min
puts the_90s.max
puts (the_90s.include?(1999 ))
puts (the_90s.include?(2000 ))
puts (the_90s.include?(1990.1 ))