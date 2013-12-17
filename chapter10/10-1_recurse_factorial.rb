def factorial(n)
  if n < 0
    return 'You can\'t take the factorial of a negative number!'
  elsif n == 0
    return 0
  elsif n == 1
    return 1
  else
    return n * factorial(n - 1)
  end
end

puts factorial(-1)
puts factorial(0)
puts factorial(1)
puts factorial(3)
puts factorial(300)