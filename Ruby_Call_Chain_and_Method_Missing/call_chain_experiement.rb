class BasicObject
  def what_is_self
    "#{self}"
  end
end

module Kernel
  def what_is_self
    "#{self}.#{super}"
  end

  def call_chain
    "Kernel"
  end
end

class Object
  def what_is_self
    "#{self}.#{super}"
  end

  def call_chain
    "Object.#{super}"
  end
end

class Animal
  def what_is_self
    "#{self}.#{super}"
  end

  def call_chain
    "Animal.#{super}"
  end

  def method_missing m, *args, &block
    puts "Hello from Animal"
    puts "you called #{m} with #{args}"
    puts "Maybe you meant: #{self.methods.select{|meth| meth.to_s.include? m.to_s }}"
    super
  end
end

module NamedThing
  def what_is_self
    "#{self}.#{super}"
  end

  def call_chain
    "NamedThing.#{super}"
  end
end

module Speaker
  def what_is_self
    "#{self}.#{super}"
  end

  def call_chain
    "Speaker.#{super}"
  end
end

class Person < Animal
  include Speaker
  prepend NamedThing

  def what_is_self
    "#{self}.#{super}"
  end

  def call_chain
    "Person.#{super}"
  end

  def method_missing m, *args, &block
    puts "Hello from Person"
    puts "you called #{m} with #{args}"
    super
  end
end

class Renee < Person
  def what_is_self
    "#{self}.#{super}"
  end

  def call_chain
    "Renee.#{super}"
  end
end

