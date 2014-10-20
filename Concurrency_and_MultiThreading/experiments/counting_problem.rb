# # class Counter
# #   attr_accessor :count

# #   def initialize
# #     @count = 0
# #   end
# # end


# # counter = Counter.new

# counter = 0

# threads = (1..10).map do |i|
#   Thread.new do
#     # Mutex.new.synchronize do
#       100_000.times do
#         # current_count = counter.count
#         # sleep(rand(0..3))

#         current_count = counter + 1
#         # sleep(rand(0..3))

#         counter = current_count
#       end
#     # end
#   end
# end

# threads.each(&:join)

# puts counter
