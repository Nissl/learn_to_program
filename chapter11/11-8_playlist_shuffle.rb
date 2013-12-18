

def shuffle word_list 
  return recursive_shuffle(word_list, [])
end

def recursive_shuffle word_list, shuffled_list
  if word_list.length == 0
    return shuffled_list
  else
    loc = rand(word_list.length)
    shuffled_list.push(word_list[loc])
    new_list = []
    (0..word_list.length - 1).each do |i|
      if i != loc
        new_list.push(word_list[i])
      end
    end
    word_list = new_list
    return recursive_shuffle word_list, shuffled_list 
  end
end

tobin_music = Dir['C:/Music Library/Amon Tobin/Out From Out Where/*.mp3']
pusher_music = Dir['C:/Music Library/Squarepusher/Ultravisitor/*.mp3']
music_list = tobin_music + pusher_music
shuffled_music = shuffle music_list

save_loc = 'C:/tealeaf/playlist'
filename = 'playlist.m3u'

Dir.chdir save_loc

File.open filename, 'w' do |f|
  shuffled_music.each do |song_name|
    f.write song_name + "\n"
  end
end

puts "Saved shuffled playlist '" + filename + "' to " + save_loc