require_relative 'monster'

module Kernel
  def class_attr_accessor *args
    args.each do |m|
      meta_class.instance_eval do
        define_method m do
          class_variable_get("@@#{m}")
        end
        define_method "#{m}=" do |a|
          class_variable_set("@@#{m}", a)
        end
      end
    end
  end

  def meta_class
    class << self
      self
    end
  end
end
require 'forwardable'

class Zombie < Monster
  class_attr_accessor :thing

  @@thing = 0


  extend Forwardable
  def_delegators "FastZombie", :fast_zombie_count
  class << self
    attr_accessor :slow_zombie_count
    def count
      @@zombie_count
    end
  end

  @slow_zombie_count = 0
  @@zombie_count = 0

  def initialize nocturnal: false, name: "Zombie", legs: 1.5, dangers: [:bites], vulnerabilities: [:decapitation]
    super nocturnal, legs,name, vulnerabilities, dangers
    @@zombie_count += 1
  end

  def say_name
    "uuurrrggghhhh #{@name}"
  end
end