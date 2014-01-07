# Better design to make this a single nested array?


class Integer
  def to_roman
    return roman_convert(self, '')
  end

  def roman_convert n, roman
    array_num = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
    array_rom = ['M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV','I']
    if n == 0
      return roman
    else
      for j in 0..array_num.length
        if n >= array_num[j]
          return roman_convert(n - array_num[j], roman << array_rom[j])
        end
      end
    end
  end
end

puts 3.to_roman
puts 10.to_roman
puts 14.to_roman
puts 1999.to_roman
puts 2013.to_roman