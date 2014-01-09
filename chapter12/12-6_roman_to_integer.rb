def valid_roman?(roman, array_rom)
  if (letters_ok?(roman, array_rom) && order_good?(roman, array_rom, 
                                                   disallowed_list = []))
    return true
  end
  return false
end

def letters_ok?(roman, array_rom)
  roman_split = roman.split ''
  roman_ok_letter = 0
  roman_split.each do |test_letter|
    array_rom.each do |rom_letter|
      if test_letter == rom_letter
        roman_ok_letter += 1
      end
    end
  end
  if roman_ok_letter == roman_split.length
    return true
  else 
    return false
  end
end

def order_good?(roman, array_rom, disallowed_list)
  if roman == ''
    return true
  else
    [2, 1].each do |slice_length|
      rom_test = roman.slice(0, slice_length)
      array_rom.each_with_index do |_, i|
        if rom_test == array_rom[i]
          new_val = roman.slice!(0, slice_length)
          if !disallow_check(new_val, disallowed_list)
            return false
          end 
          disallowed_list = disallow(i, array_rom, disallowed_list)
          return order_good?(roman, array_rom, disallowed_list)
        end
      end
    end
  end
end

def disallow(i, array_rom, disallowed_list)
  if i > 0
    priors = array_rom.slice(0..(i - 1))
  else
    priors = []
  end
  
  type = i % 4
  if type == 0
    disallowed_list = disallowed_list + priors
  elsif type == 1
    disallowed_list = disallowed_list + array_rom.slice(i, 4) + priors
  else
    disallowed_list = disallowed_list + array_rom.slice(i, 2) + priors
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

def convert(input, array_num, array_rom, int_out)
  if input == ""
    return int_out
  end
  [2, 1].each do |slice_length|
    input_slice = input.slice(0, slice_length)
    array_rom.each_with_index do |_, i|
      if input_slice == array_rom[i]
        input.slice!(0, slice_length)
        return convert(input, array_num, array_rom, int_out + array_num[i])
      end
    end
  end
end

# Better design to make this a single nested array?
array_num = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
array_rom = ['M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV','I']

puts "Input Roman numerals to convert to modern number"
input = gets.chomp.to_s.upcase
roman = String.new(input)

if valid_roman?(roman, array_rom)
  int_out = convert(input, array_num, array_rom, int_out = 0)
  puts "Converted result: " + int_out.to_s
else
  puts "Sorry, friend, that's not a valid roman number."
end