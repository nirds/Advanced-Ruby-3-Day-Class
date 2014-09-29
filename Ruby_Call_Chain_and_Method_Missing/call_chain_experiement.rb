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
  include NamedThing
  include Speaker

  def what_is_self
    "#{self}.#{super}"
  end

  def call_chain
    "Person.#{super}"
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

