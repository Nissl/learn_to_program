# This "improved" shuffle forces the program to not put tracks from the same 
# artist or album after each other.

def shuffle word_list, path, min_alb_length 
  return force_shuffle(word_list, path, min_alb_length, [])
end

def force_shuffle word_list, path, min_alb_length, shuffled_list
  if word_list.length == 0
    return shuffled_list
  else
    loc = find_next(word_list, path, min_alb_length, shuffled_list)
    shuffled_list.push(word_list[loc])
    new_list = []
    (0..word_list.length - 1).each do |i|
      if i != loc
        new_list.push(word_list[i])
      end
    end
    word_list = new_list
    return force_shuffle word_list, path, min_alb_length, shuffled_list 
  end
end

# find the next 
def find_next word_list, path, min_alb_length, shuffled_list
  if shuffled_list.length > 0 && word_list.length > min_alb_length
    path_list = path.split '/'
    last_song = shuffled_list[shuffled_list.length - 1].split '/'
    next_song_found = false
    while true
      loc = rand(word_list.length)
      test_selection = word_list[loc].split '/'
      difference = 0
      (0..(last_song.length - 1)).each do |check|
        if last_song[check] == path_list[check] || last_song[check] != test_selection[check]
          difference += 1
        end
      end
      if difference == last_song.length
        break
      end
    end
  else
    loc = rand(word_list.length)
  end
  return loc
end

def make_list
  puts "Welcome to John\'s super-enhanced shuffling program!"
  puts "Enter music folder"
  music_lib_path = gets.chomp
  puts

  puts "Now please enter the artists and albums you want to mix."
  puts "Press enter without entering anything to finish."
  puts

  album_list = []
  while true
    puts "Enter the artist to mix, please use proper capitalization"
    artist = gets.chomp
    if artist.length == 0
      break
    else
      puts
      puts "Enter the album to mix, please use proper capitalization"
      album = gets.chomp
      puts
      album_list.push([artist, album])
    end
  end

  music_list = []
  # This is a hack to make sure the program doesn't get stuck with just one
  # artist left at the end. I'd like to find a better solution that doesn't
  # require so much argument passing and result in a bit of poor shuffling
  # at the end of the list, but I want to move on at this point.
  min_alb_length = 1000
  album_list.each do |album|
    path = [music_lib_path, album[0], album[1], "*.mp3"].join("/") 
    music_list = music_list + Dir[path]
    if Dir[path].length < min_alb_length
      min_alb_length = Dir[path].length
    end
  end
  return music_list, music_lib_path, min_alb_length
end


music_list, music_lib_path, min_alb_length = make_list
shuffled_music = shuffle music_list, music_lib_path, min_alb_length


puts 'Now please enter the path where you would like the playlist saved.'
save_loc = gets.chomp
puts 'Now please enter the filename (.m3u is the standard format).'
filename = gets.chomp

Dir.chdir save_loc

File.open filename, 'w' do |f|
  shuffled_music.each do |song_name|
    f.write song_name + "\n"
  end
end

puts "Saved shuffled playlist '" + filename + "' to " + save_loc