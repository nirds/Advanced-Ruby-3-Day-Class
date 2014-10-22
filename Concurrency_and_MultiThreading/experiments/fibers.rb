fiber = Fiber.new do |str, i|
  second = Fiber.yield str << "World #{i+1}"
  third = Fiber.yield str << "World #{i+1}"
  fourth = Fiber.yield str << "World #{i+1}"
end

puts fiber.resume "Hello ", 0
puts "Ran the first"
puts fiber.resume "Hi ", 1
puts "Ran the second"
puts fiber.resume "GoodBye ", 2
puts "Ran the third"
puts fiber.resume "Bye ", 3
puts "Ran the fourth"
puts fiber.resume "Bye ", 4