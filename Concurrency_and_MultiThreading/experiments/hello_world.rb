thread_1 = Thread.new do
  puts "Hello from Thread 1"
end

thread_2 = Thread.new do
  puts "Hello from Thread 2"
end

thread_2.join
thread_1.join
