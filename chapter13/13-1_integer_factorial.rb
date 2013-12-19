class Integer
  def factorial
    if self < 0
      return 'You can\'t take the factorial of a negative number!'
    elsif self <= 1
      return 1
    else
      return self * (self - 1).factorial
    end
  end
end

puts -1.factorial
puts 3.factorial
puts 6.factorial
puts 10.factorial