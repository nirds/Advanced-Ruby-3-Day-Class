LOCATIONS = []
class Location
  attr_accessor :name
end

class Path
  attr_accessor :start, :end, :direction
end


def location_maker
  Location
end

def location_setup l
  puts "tell me the name of the location:"
  l.name = gets.chomp
end

puts "What would you like to create? (Location or Path)"
thing = gets.chomp

eval("#{thing.upcase}S") << send("#{thing.downcase}_maker").new do |l|
  send "#{thing.downcase}_maker", l
end

puts LOCATIONS





