# This is where she stores her pictures before
# she gets her YAML on and moves them to the server.
# Just for my own convenience, I'll go there now.
Dir.chdir 'C:/tealeaf/kitty_pics' # where the files are going

# First we find all of the pictures to be moved.
pic_names = Dir['C:/tealeaf/kitty_pics/*.jpg'] # where the files are coming from

puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Renaming #{pic_names.length} files: "

pic_number = 1
pic_names.each do |name|
  print '.' # This is our "progress bar".
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end
  if File.exist?(new_name)
    puts
    puts "That name seems to refer to existing files."
    puts "Program terminated to avoid overwriting any files."
    exit
  end
  File.rename name, new_name
  pic_number = pic_number + 1
end

puts # This is so we aren't on progress bar line.
puts 'Done, amigo!'