module BitingThing
  def self.bites?
    puts "I bite things"
  end
  def bite something
    puts "#{self.name} bit #{something.name}!!!"
  end
end