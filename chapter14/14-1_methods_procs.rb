def do_self_importantly some_proc
  puts "Errbody just HOLD ON! I'm doing something..."
  some_proc.call
  puts "OK, everyone, I'm done. As you were."
end

say_hello = Proc.new do 
  puts 'hello'
end
  
say_goodbye = Proc.new do
  puts 'goodbye'
end

do_self_importantly say_hello
do_self_importantly say_goodbye

def maybe_do some_proc
  if rand(2) == 0
    some_proc.call
  end
end

def twice_do some_proc
  some_proc.call
  some_proc.call
end

wink = Proc.new do
  puts '<wink>'
end

glance = Proc.new do
  puts '<glance>'
end

4.times do
  maybe_do wink
end

4.times do
  maybe_do glance
end

twice_do wink
twice_do glance

def do_until_false first_input, some_proc
  input = first_input
  output = first_input

  while output 
    input = output
    output = some_proc.call input
  end

  input
end

build_array_of_squares = Proc.new do |array|
  puts array
  last_number = array.last
  if last_number <= 0
    # You can't do returns from inside Procs! It screws stuff up.
    false
  else
    array.pop
    array.push last_number ** 2
    array.push last_number - 1
  end
end

always_false = Proc.new do |just_ignore_me|
  false
end

puts do_until_false([5], build_array_of_squares).inspect

yum = "line to indicate return with nothing else happening"
puts do_until_false(yum, always_false)