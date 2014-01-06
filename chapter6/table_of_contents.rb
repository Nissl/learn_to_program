line_width = 60
page_num_width = 4

puts
puts "Table of Contents".center(line_width)
puts 

chapters = [['Chapter 1:  Hooray!', 1], ['Chapter 2:  D\'oh!', 21], 
         ['Chapter 3:  Moving on... ', 100]]

chapters.each do |chapter|
  puts (chapter[0].ljust(line_width / 2) + 
  "page".rjust(line_width / 2 - "page".length - page_num_width) + 
  chapter[1].to_s.rjust(page_num_width))
end

# old, repetitive version of code below

# chap1_title = 'Chapter 1:  Hooray!'
# chap1_page_num = 1
# puts (chap1_title.ljust(line_width / 2) + 
# 	  "page".rjust(line_width / 2 - "page".length - page_num_width) + 
# 	  chap1_page_num.to_s.rjust(page_num_width))
# chap2_title = 'Chapter 2:  D\'oh!'
# chap2_page_num = 21
# puts (chap2_title.ljust(line_width / 2) + 
# 	  "page".rjust(line_width / 2 - "page".length - page_num_width) + 
# 	  chap2_page_num.to_s.rjust(page_num_width))
# chap3_title = 'Chapter 3:  Moving on... '
# chap3_page_num = 100
# puts (chap3_title.ljust(line_width / 2) + 
# 	  "page".rjust(line_width / 2 - "page".length - page_num_width) + 
# 	  chap3_page_num.to_s.rjust(page_num_width))