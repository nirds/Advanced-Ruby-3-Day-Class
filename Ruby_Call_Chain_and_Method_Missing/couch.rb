puts __FILE__

puts "In a ruby file"

HELLO_WORLD = "hello world"

class Couch
  attr_accessor :pillows, :cushions, :dogs

  def pillows
    @pillows
  end

  def pillows= pillows
    @pillows = pillows
  end

  def initialize pillows, cushions, dogs
    @pillows = pillows
    @cushions = cushions
    @dogs = dogs
  end

  puts "Defining Couch!"

  [:pillows, :cushions, :dogs].each do |s|
    define_method("how_many_#{s}?") do
      instance_variable_get("@#{s}").count
    end
  end

  def respond_to? method_name
    return true if dynamic_method_logic method_name
    super
  end

  def dynamic_method_logic method_name
    true #method_name == :happy || method_name == :hello
  end

  def method_missing method_name, *args, &block
    if dynamic_method_logic method_name
      self.class.class_eval do
        define_method method_name  do |*args|
          return yield "method missing" if block_given?
          "you called #{method_name}"
        end
      end

      self.send method_name
    else
      super
    end
  end

end


$renees_couch = Couch.new [:red, :red, :black, :black], [:grey, :grey], ['Bradley', 'Sticks']
puts $renees_couch.how_many_dogs?