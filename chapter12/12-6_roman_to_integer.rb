require 'pry'

def check_roman(roman, array_rom, array_num)
  roman_split = roman.split ''
  
  # test there are no invalid letters
  roman_ok_letter = 0
  roman_split.each do |test_letter|
    array_rom.each do |rom_letter|
      if test_letter == rom_letter
        roman_ok_letter += 1
      end
    end
  end

  # if all letters are valid, test their order
  if roman_ok_letter == roman_split.length
    order_good = order_test(roman, array_rom, array_num, order_good = true, 
                           disallowed_list = [])
    if order_good == true
      return true
    end
  else
    return false
  end
end

def order_test(roman, array_rom, array_num, order_good, disallowed_list)
  if roman == ''
    return true
  else
    [2, 1].each do |length|
      rom_test = roman.slice(0, length)
      array_rom.each_with_index do |_, i|
        if rom_test == array_rom[i]
          new_val = roman.slice!(0, length)
          if !disallow_check(new_val, disallowed_list)
            return false
          end 
          disallowed_list = disallow(i, array_rom, disallowed_list)
          return order_test(roman, array_rom, array_num, order_good, disallowed_list)
        end
      end
    end
  end
end

def disallow(i, array_rom, disallowed_list)
  type = i % 4
  if type == 1
    disallowed_list = disallowed_list + array_rom.slice(i, 4)
  elsif type == 2 || type == 3
    disallowed_list = disallowed_list + array_rom.slice(i, 2)
  end
  disallowed_list
end

def disallow_check(new_val, disallowed_list)
  if disallowed_list 
    disallowed_list.each do |disallowed|
      if new_val == disallowed
        return false
      end
    end
  end
  true
end

def convert(int_out, input, array_num, array_rom)
  slice2 = input[0..1]
  array_rom.each_with_index do |_, i|
    if slice2 == array_rom[i]
      input.slice!(0..1)
      return convert(int_out + array_num[i], input, array_num, array_rom)
    end
  end
  slice1 = input[0]
  array_rom.each_with_index do |_, i|
    if slice1 == array_rom[i]
      input.slice!(0)
      return convert(int_out + array_num[i], input, array_num, array_rom)
    end
  end
  return int_out
end

# Better design to make this a single nested array?
array_num = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
array_rom = ['M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV','I']

puts "Input Roman numerals to convert to modern number"
input = gets.chomp.to_s.upcase
roman = String.new(input)

if check_roman(roman, array_rom, array_num)
  int_out = convert(0, input, array_num, array_rom)
  puts "Converted result: " + int_out.to_s
else
  puts "Sorry, friend, that's not a valid roman number."
end