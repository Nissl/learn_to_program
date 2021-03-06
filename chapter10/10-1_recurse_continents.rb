# Codebase copied from the book and modfied so "explorers" don't fall off the 
#   world. Continent modified to test this behavior.
M = 'land'
o = 'water'
world = [[o,o,o,o,o,o,M,o,o,o,o],
         [o,o,o,o,M,M,M,o,o,o,o],
         [o,o,o,o,o,o,M,o,M,M,o],
         [o,o,M,M,o,o,M,o,o,M,o],
         [o,o,o,o,o,M,M,o,o,o,o],
         [o,o,o,o,M,M,M,M,o,o,o],
         [M,M,M,M,M,M,M,M,M,M,M],
         [o,o,o,M,M,o,M,M,M,o,o],
         [o,o,o,o,o,o,M,M,o,o,o],
         [o,M,o,o,o,M,M,o,o,o,o],
         [o,o,o,o,o,o,M,o,o,o,o]]

def continent_size(world, x, y)
  if(x < 0 || x > world[0].length - 1)
    return 0
  elsif (y < 0 || y > world.length - 1)
    return 0
  elsif world[y][x] != 'land'
    return 0
  else
    size = 1
    world[y][x] = 'counted land'
  # ...then we count all of the neighboring eight tiles
  # (and, of course, their neighbors by way of the recursion).
    size = size + continent_size(world, x-1, y-1)
    size = size + continent_size(world, x , y-1)
    size = size + continent_size(world, x+1, y-1)
    size = size + continent_size(world, x-1, y )
    size = size + continent_size(world, x+1, y )
    size = size + continent_size(world, x-1, y+1)
    size = size + continent_size(world, x , y+1)
    size = size + continent_size(world, x+1, y+1)
    size
  end
end

puts continent_size(world, 5, 5)