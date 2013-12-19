class Integer
  def to_eng
    if self == 10
      english = 'five'
    else
      english = 'forty-two'
    end

    english
  end
end

puts 10.to_eng
puts 42.to_eng
puts 32.to_eng