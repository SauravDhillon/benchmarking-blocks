def benchmark
  # Your benchmarking code goes here.
  start_time = Time.now #Record the start time
  yield  # Execute the block
  end_time = Time.now # Record the end time
  end_time - start_time # Return the time difference
end
 
# Be careful, pasting this into IRB will take a long time to print.
# It's a loooong string. :)
long_string = "apple"*100000000
 
running_time = benchmark { long_string.reverse }
 
puts "string.reverse took #{running_time} seconds to run"