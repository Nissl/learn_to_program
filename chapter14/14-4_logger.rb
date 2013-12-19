$nesting_depth = 0

def log block_desc, &block
  puts ("  " * $nesting_depth) + "Beginning #{block_desc}"
  $nesting_depth += 1
  return_val = block.call
  puts ("  " * $nesting_depth) + "#{block_desc} finished, returning: #{return_val}" 
  $nesting_depth -= 1
end

log 'outer_block' do 
  log 'inner_block' do
    "I'm the first inner block!"
  end
  log 'inner_block_2' do 
    "I'm the second inner block!"
  end
  "I like being the outer block!"
end
