puts "What year were you born, my friend?"
year = gets.chomp
puts "What month were you born, my friend?"
month = gets.chomp
puts "What day were you born, my friend?"
day = gets.chomp

birth_time = Time.local(year, month, day)
curr_time = Time.new
spank_num = ((curr_time - birth_time) / 60 / 60 / 24 / 365).to_i

puts ("Yay, you\'re " + spank_num.to_s + ", now you get " + 
      spank_num.to_s + " spanks for it!")

spank_num.times do
  puts "SPANK!"
end