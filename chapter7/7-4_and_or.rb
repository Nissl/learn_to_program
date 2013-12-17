i_am_john = true
i_am_purple = false
i_like_cider = true
i_eat_rocks = false

puts i_am_john && i_like_cider
puts i_like_cider && i_eat_rocks
puts i_am_purple && i_like_cider
puts i_am_purple && i_eat_rocks
puts
puts i_am_john || i_like_cider
puts i_like_cider || i_eat_rocks
puts i_am_purple || i_like_cider
puts i_am_purple || i_eat_rocks
puts
puts !i_am_purple
puts !i_am_john