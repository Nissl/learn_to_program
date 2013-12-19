dict_array = []
dict_hash = {}

dict_array[0] = 'sleepy'
dict_array[1] = 'happy'
dict_array[2] = 'silly'
dict_array[3] = 'forgetful'

dict_hash['bedtime'] = 'sleepy'
dict_hash['evening'] = 'happy'
dict_hash['noon'] = 'silly'
dict_hash['morning'] = 'forgetful'

dict_array.each do |word|
  puts word
end

dict_hash.each do |time, mood|
  puts "#{time}: #{mood}"
end