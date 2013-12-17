line_width = 60

chap_nums = [1, 2, 3]
chap_titles = ['Hooray!', 'D\'oh!', 'Moving on...', 'Test']
page_nums = [1, 21, 100]

# set to 1 greater than the length of the number for your largest chapter
chap_num_width = 2

# set to 1 greater than the length of the number for your largest page
page_num_width = 4

puts
puts 'Table of Contents'.center(line_width)
puts 

chapter = 0
while chapter < chap_nums.length
  puts ('Chapter ' + chap_nums[chapter].to_s.ljust(chap_num_width) + ': ' +
    chap_titles[chapter].ljust(line_width / 2 - 'Chapter'.length - 
      chap_num_width - 1) + 
    'page'.rjust(line_width / 2 - 'page'.length - page_num_width) + 
    page_nums[chapter].to_s.rjust(page_num_width))
  chapter += 1
end