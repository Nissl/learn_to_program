require 'yaml'

demo_array = ['I wanted to write something funny and clever.',
              'But it\'s too early in the morning.',
              'So I\'ll just write this.']

demo_string = demo_array.to_yaml

filename = 'YamlDemo.txt'

File.open filename, 'w' do |f|
  f.write demo_string
end

read_string = File.read filename

read_array = YAML::load read_string

puts(read_string == demo_string)
puts(read_array == demo_array)