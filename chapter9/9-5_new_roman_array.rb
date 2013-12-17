# Better design to make this a single nested array?
array_num = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
array_rom = ['M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV','I']

def convert(i, roman, array_num, array_rom)
  if i == 0
    return roman
  else
    for j in 0..array_num.length
      if i >= array_num[j]
        return convert(i - array_num[j], roman + array_rom[j], array_num, array_rom)
      end
    end
  end
end

puts "Input number to be converted to old Roman numerals"
roman = convert(gets.chomp.to_i, '', array_num, array_rom)
puts "Converted result: " + roman