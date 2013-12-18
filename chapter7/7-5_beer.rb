bottles = 99

while bottles > 2
  puts (bottles.to_s + " bottles of beer on the wall, "  + 
         bottles.to_s + " bottles of beer! ")
  bottles -= 1
  puts ("Take one down, pass it around! " + bottles.to_s +
         " bottles of beer on the wall!")
  puts
end

# need to pull out the last two to make the plural nouns work right.
# note that this bug fix was originally pushed with my chapter 10 update, but not noted
puts (bottles.to_s + " bottles of beer on the wall, "  + 
         bottles.to_s + " bottles of beer! ")
bottles -= 1
puts ("Take one down, pass it around! " + bottles.to_s +
         " bottle of beer on the wall!")
puts
puts (bottles.to_s + " bottle of beer on the wall, "  + 
         bottles.to_s + " bottle of beer! ")
puts "Take one down, pass it around! No more bottles of beer on the wall!"
puts
puts "I'm so drunk! How did this happen!?"
