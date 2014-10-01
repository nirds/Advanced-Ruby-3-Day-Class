class Location

  def self.all
    @@locations
  end

  def self.all_names
    all.map{|l| l.name}
  end

  @@locations = []

  attr_accessor :name

  def initialize
    @@locations << self
  end
end

class Path
  attr_accessor :start, :end, :direction
end

module LocationHelper
  def self.location_maker
    Location.new
  end

  def self.location_setup l
    puts "tell me the name of the location:"
    l.name = gets.chomp
  end
end

module PathHelper
  def self.path_maker
    Path.new
  end

  def self.path_setup p
    puts "tell me the start of the path:"
    p.start = gets.chomp
  end
end


puts "What would you like to create? (Location or Path)"
thing = gets.chomp

module_to_call = Module.const_get("#{thing.capitalize}Helper")

new_thing = module_to_call.send("#{thing.downcase}_maker")

module_to_call.send("#{thing.downcase}_setup", new_thing)

puts Location.all_names





