# I went for some recursion here to brush up.
# I know the rest of the method is a a bit ugly/hacky, 
# see new_roman_array.rb for a cleaned-up version using arrays.

def convert(i, roman)
  if i == 0
    return roman
  elsif i >= 1000
    return convert(i - 1000, roman + 'M')
  elsif i >= 500
    return convert(i - 500, roman + 'D')
  elsif i >= 100
    return convert(i - 100, roman + 'C')
  elsif i >= 50
    return convert(i - 50, roman + 'L')
  elsif i >= 10
    return convert(i - 10, roman + 'X')
  elsif i >= 5
    return convert(i - 5, roman + 'V')
  else
    return convert(i - 1, roman + 'I')
  end
end

puts "Input number to be converted to old Roman numerals"
roman = convert(gets.chomp.to_i, '')
puts "Converted result: " + roman