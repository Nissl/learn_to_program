puts "This program lists all of the leap years in a range specified by the user."
puts "Input starting year:"
year = gets.chomp.to_i
puts "Input ending year:"
end_year = gets.chomp.to_i
puts
puts "List of leap years in the range " + year.to_s + "-" + end_year.to_s

while year <= end_year
  if year % 4 == 0 && year % 100 != 0 || year % 400 == 0
    puts year
  end
  year += 1
end