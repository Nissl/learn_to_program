filename = 'SaveDemo.txt'
test_string = 'I can\'t believe it\'s not butter!' +
              'I actually this I/O design quite a bit.'

# The 'w' here is for write-access to the file,
# since we are trying to write to it.

File.open filename, 'w' do |f|
  f.write test_string
end
read_string = File.read filename
puts(read_string == test_string)