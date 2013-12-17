bottles = 99

while bottles > 1
  puts (bottles.to_s + " bottles of beer on the wall, "  + 
         bottles.to_s + " bottles of beer! ")
  puts ("Take one down, pass it around! " + bottles.to_s +
         " bottles of beer on the wall!")
  puts
  bottles -= 1
end

puts (bottles.to_s + " bottle of beer on the wall, "  + 
         bottles.to_s + " bottle of beer! ")
puts ("Take one down, pass it around! " + bottles.to_s +
      " bottle of beer on the wall!")
puts
puts "I'm so drunk! How did this happen!?"
