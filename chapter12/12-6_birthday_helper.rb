puts "What path is the file in? Leave blank if same directory as program"
input = gets.chomp
if input.length > 0
  Dir.chdir(input)
end
puts "What is the filename?"
filename = gets.chomp
read_string = File.read(filename)

bday_hash = {}
read_string.each_line do |line|
  split_line = line.split(',', 2)
  bday_hash[split_line[0]] = split_line[1].strip
end


puts "Whose birthday do you want to know?"
birthday_boy = gets.chomp
puts "That person\'s birthday is" + bday_hash[birthday_boy]
