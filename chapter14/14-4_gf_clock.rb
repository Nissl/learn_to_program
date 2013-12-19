def clock &block
  hour = Time.new.hour
  if hour > 12
    hour = hour - 12
  end
  if hour == 0
    hour = 12
  hour.times do
    block.call
  end
end

clock do 
  puts "DONG!"
end