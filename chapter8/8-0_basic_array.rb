names = ['Amy', 'Betty', 'Captain Happy']
puts names
puts
puts names[0]
puts names[1]
puts names[2]
puts names[3] # This is out of range. It returns *nil*, which prints blank.

amigos = []
amigos[3] = 'Fred'
amigos[0] = 'Nope'
amigos[1] = 'Sisi'
amigos[0] = 'Fred'
puts amigos