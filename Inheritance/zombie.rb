require_relative 'monster'


require_relative 'kernel'
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