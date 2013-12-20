def sort arr
  return arr if arr.length <=1

  middle = arr.pop
  less = arr.select{|x| x < middle}
  more = arr.select{|x| x >= middle}

  return sort(less) + [middle] + sort(more)
end

p sort([1, 5, 6, 82, 221, 8, 2, 3])