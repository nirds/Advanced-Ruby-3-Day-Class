module NamedThing

  def self.included klass
    puts "WAIT! STOP!" unless klass.instance_methods.include? :name
  end

  def say_name
    "My name is #{name}"
  end

  def shout_name
    name.upcase
  end
end
