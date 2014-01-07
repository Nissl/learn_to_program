def clock(&block)
  hour = Time.now.hour
  if hour > 12
    hour -= 12
  elsif hour == 0
    hour = 12
  end
  hour.times do
    block.call
  end
end

clock do 
  puts "DONG!"
end