time = Time.new
time2 = time + 60

puts time
puts time2

time4 = Time.local(2000, 1, 1)
time3 = Time.local(1976, 8, 3, 13, 31, 42)

puts time3
puts time4

time_gm = Time.gm(1981, 3, 31)

puts time - time2
puts time4 - time3
puts time4 - time_gm