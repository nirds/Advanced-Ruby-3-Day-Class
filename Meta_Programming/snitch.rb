class Snitch
  def self.method_added(method_name)
    puts "Someone added a new method: #{method_name}"
  end

  def self.method_removed(method_name)
    puts "Someone removed a method: #{method_name}"
  end

  def self.method_undefined(method_name)
    puts "Someone undefined a method: #{method_name}"
  end

  def self.inherited(subclass)
    puts "Someone created a subclass of me: #{subclass}"
  end

  def self.const_missing(constant)
    puts "Someone tried to access a constant I don't have: #{constant}"
  end
end