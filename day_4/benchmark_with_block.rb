def benchmark
    # Your benchmarking code goes here.
    timer = Time.now
        yield
    Time.now - timer    
 end

# Be careful, pasting this into IRB will take a long time to print.
# It's a loooong string. :)
long_string = 'apple' * 100_000_000

running_time = benchmark { long_string.reverse }

puts "string.reverse took #{running_time} seconds to run"
