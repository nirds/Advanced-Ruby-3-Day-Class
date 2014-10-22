require 'pry'
class Test
  @@hi = "hi"
  def self.hello
    puts @@hi
    binding.pry
  end
end


Test.hello