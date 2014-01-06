line_width = 60

chap_nums = [1, 2, 3, 15]
chap_titles = ['Hooray!', 'D\'oh!', 'Moving on...', 'Test']
page_nums = [1, 21, 100, 1099]

# set to the length of the number for your largest chapter
chap_num_width = 2

# set to the length of the number for your largest page
page_num_width = 4

###############

puts
puts 'Table of Contents'.center(line_width)
puts 

(0..chap_titles.length - 1).each do |i|
  puts ('Chapter ' + chap_nums[i].to_s.ljust(chap_num_width + 1) + 
    ': ' + chap_titles[i].ljust(line_width / 2 - 'Chapter'.length - 
      chap_num_width) + 'page'.rjust(line_width / 2 - 'page'.length - 
      page_num_width + 1) + page_nums[i].to_s.rjust(page_num_width + 1))
end