# I know this is ugly, so I used arrays to shorten and improve code 
# flexibility in 9-5_new_roman_array.rb.

def convert(i, roman)
  if i == 0
    return roman
  elsif i >= 1000
    return convert(i - 1000, roman + 'M')
  elsif i >= 900
    return convert(i - 900, roman + 'CM')
  elsif i >= 500
    return convert(i - 500, roman + 'D')
  elsif i >= 400
    return convert(i - 400, roman + 'CD')
  elsif i >= 100
    return convert(i - 100, roman + 'C')
  elsif i >= 90
    return convert(i - 90, roman + 'XC')
  elsif i >= 50
    return convert(i - 50, roman + 'L')
  elsif i >= 40
    return convert(i - 40, roman + 'XL')
  elsif i >= 10
    return convert(i - 10, roman + 'X')
  elsif i >= 9
    return convert(i - 9, roman + 'IX')
  elsif i >= 5
    return convert(i - 5, roman + 'V')
  elsif i >= 4
    return convert(i - 4, roman + 'IV')
  else
    return convert(i - 1, roman + 'I')
  end
end



puts "Input number to be converted to Roman numerals"
roman = convert(gets.chomp.to_i, '')
puts "Converted result: " + roman