# Better design to make this a single nested array?
array_num = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
array_rom = ['M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV','I']

def convert(int_out, roman, array_num, array_rom)
  if roman.length == 1
    slice1 = roman[0]
    (0..array_rom.length - 1).each do |i|
      if slice1 == array_rom[i]
        return int_out + array_num[i]
      end
    end
  else
    slice2 = roman[0..1]
    (0..array_rom.length - 1).each do |i|
      if slice2 == array_rom[i]
        return convert(int_out + array_num[i], roman[2..roman.length - 1], 
                       array_num, array_rom)
      end
    end
    slice1 = roman[0]
    (0..array_rom.length - 1).each do |i|
      if slice1 == array_rom[i]
        return convert(int_out + array_num[i], roman[1..roman.length - 1], 
                       array_num, array_rom)
      end
    end
  end
  return int_out
end

def check_roman(roman, array_rom, array_num)
  roman_split = roman.split ''
  roman_ok = 0

  # test there are no invalid letters
  roman_split.each do |test_letter|
    array_rom.each do |rom_letter|
      if test_letter == rom_letter
        roman_ok += 1
      end
    end
  end

  # test for proper order
  order_bad = order_test(roman, array_rom, array_num, order_bad=false, curr_val=1001)

  if roman_ok == roman_split.length && order_bad == false
    return true
  else
    return false
  end
end

def order_test(roman, array_rom, array_num, order_bad, curr_val)
  if roman == ''
    return order_bad
  else
    slice2 = roman[0..1]
    (0..array_rom.length - 1).each do |i|
      if slice2 == array_rom[i]
        new_val = array_num[i]
        if new_val > curr_val
          order_bad = true
        else
          curr_val = new_val
        end
        roman = roman[2..roman.length - 1]
        # Otherwise if the last two digits were just removed, the array at the head 
        # gets passed in. Again, a little hacky but time to move on. Will keep this issue 
        # in mind for future method designs. 
        if not roman 
         roman = ''
        end
        return order_test(roman, array_rom, array_num, order_bad, curr_val)
      end
    end
    slice1 = roman[0]
    (0..array_rom.length - 1).each do |i|
      if slice1 == array_rom[i]
        new_val = array_num[i]
        if new_val > curr_val
          order_bad = true
        else
          curr_val = new_val
        end
        roman = roman[1..roman.length - 1]
        if not roman 
          roman = ''
        end
        return order_test(roman, array_rom, array_num, order_bad, curr_val)
      end
    end
  end
end


puts "Input Roman numerals to convert to modern number"
input = gets.chomp.to_s.upcase
roman = check_roman(input, array_rom, array_num)
if roman
  int_out = convert(0, input, array_num, array_rom)
  puts "Converted result: " + int_out.to_s
else
  puts "Sorry, friend, that's not a valid roman number."
end