def english_number number
  if number < 0 
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  num_string = '' 
  ones_place = ['one', 'two', 'three',
                'four', 'five', 'six',
                'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty',
                'forty', 'fifty', 'sixty',
                'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen',
               'fourteen', 'fifteen', 'sixteen',
               'seventeen', 'eighteen', 'nineteen']
  

  # millions             
  millions_write = number / 1000000 
  left = number - (millions_write * 1000000) 
  if millions_write > 0
    millions = english_number millions_write
    num_string = num_string + millions + ' million'
    if left > 0
      num_string = num_string + ' '
    end
    number = number - millions_write * 1000000
  end

  # thousands             
  thousands_write = number / 1000 
  left = number - (thousands_write * 1000) 
  if thousands_write > 0
    thousands = english_number thousands_write
    num_string = num_string + thousands + ' thousand'
    if left > 0
      num_string = num_string + ' '
    end
    number = number - thousands_write * 1000
  end

  # hundreds
  hundreds_write = number / 100 
  left = number - (hundreds_write * 100) 
  if hundreds_write > 0
    hundreds = english_number hundreds_write
    num_string = num_string + hundreds + ' hundred'
    if left > 0
      num_string = num_string + ' '
    end
    number = number - hundreds_write * 100
  end

  # tens
  tens_write = number / 10 
  left = number - (tens_write * 10) 
  if tens_write > 0
    if ((tens_write == 1) and (left > 0))
      num_string = num_string + teenagers[left - 1]
      number = 0
      left = 0 
    else
      num_string = num_string + tens_place[tens_write - 1]
    end
    if left > 0
      num_string = num_string + '-'
    end
    number = number - tens_write * 10
  end

  #ones
  ones_write = number
  if ones_write > 0
    num_string = num_string + ones_place[ones_write - 1]
  end
  num_string
end

puts english_number( 0)
puts english_number( 9)
puts english_number( 10)
puts english_number( 11)
puts english_number( 17)
puts english_number( 32)
puts english_number( 88)
puts english_number( 99)
puts english_number(100)
puts english_number(101)
puts english_number(234)
puts english_number(3211)
puts english_number(11243)
puts english_number(999999)
puts english_number(3112003)
puts english_number(999999999)