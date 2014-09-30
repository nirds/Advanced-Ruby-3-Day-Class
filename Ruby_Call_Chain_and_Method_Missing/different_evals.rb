String.instance_eval do
  def is_happy?
    puts self.inspect
    self == "happy"
  end
end

puts "======================="
puts String.is_happy?
puts "======================="

String.class_eval do
  def is_happy?
    puts self.inspect
    self == "happy"
  end
end

puts "======================="
happy = "happy"
puts happy.is_happy?
puts "======================="

happy.instance_eval do
  def am_i_happy?
    puts self.inspect
    true
  end
end

puts "======================="
puts happy.am_i_happy?
puts "======================="
puts "happy".am_i_happy?
puts "Previous line breaks" # never executed!


