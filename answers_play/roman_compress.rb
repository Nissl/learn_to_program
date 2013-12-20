def roman_numeral num
  raise 'Must use positive integer' if num <= 0
  digit_vals = [['I', 5, 1],
                ['V', 10, 5],
                ['X', 50, 10],
                ['L', 100, 50],
                ['C', 500, 100],
                ['D', 1000, 500],
                ['M', nil, 1000]]

  roman = ''
  remaining = nil

  build_rev = proc do |l,m,n|
    # if m is true, then value x : otherwise y
    # this operation basically gives the value in the current category
    # (ones, fives, tens, fifites, etc.)
    num_l = m ? (num % m / n) : (num / n)
    # if we're not in thousands, and it's a number that's one less than
    # so would force, e.g., IV, then this is true.
    full = m && (num_l == (m / n - 1))
    # if we're in the above situation, and the category is full and we've already
    # determined remaining + present
    if full && (num_l > 1 || remaining)
      # carry l if not already carried
      remaining ||= l
    else 
      #this puts the remainder in.
      if remaining
        roman << l + remaining
        # cancel the remainder now that it's been added, for another run through.
        remaining = nil
      end
      roman << l * num_l
    end
  end
  # for each digit in the list, build on the word
  digit_vals.each {|l,m,n| build_rev[l,m,n]}

  #now flip & return.
  roman.reverse

end

puts(roman_numeral(14))
puts(roman_numeral(1999))