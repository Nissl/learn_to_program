class Die

  # If you don't do this, it starts off as nil!
  def initialize
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end

  def cheat cheat_num
    if cheat_num >= 1 && cheat_num <= 6
      @number_showing = cheat_num 
    else
      puts "You can\'t even cheat right!"
    end
  end 

end

die = Die.new
puts die.showing
die.roll
puts die.showing
puts die.showing
die.roll
puts die.showing
puts die.showing
die.roll
puts die.showing
puts die.showing
die.roll
puts die.showing
puts die.showing

die.cheat(6)
puts die.showing
die.cheat(5)
puts die.showing
die.cheat(4)
puts die.showing
die.cheat(7)
puts die.showing
die.cheat(0)
puts die.showing
die.cheat(1)
puts die.showing