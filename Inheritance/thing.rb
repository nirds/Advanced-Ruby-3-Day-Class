module Thinger
  def from_thinger
    puts "this lives in thinger"
  end
end

class Thing
  class_attr_accessor :count
  attr_accessor :happy

  def self.count
    @@count
  end

  def self.count= count
    @@count = count
  end

  def happy
    instance_variable_get("@happy")
  end

  def happy= happy
    instance_variable_set("@happy", happy)
  end

  @@count = 0

  extend Thinger

  class << self

    include Thinger

    def count
      @@zombie_count
    end

    def happy
      puts "happy"
    end

  end


  def method_missing m, *args, &block
    puts "you called #{m} with #{args}"
    self.class.class_eval do
      define_method(m) do |*args, &block|
        yield if block_given?
        block.call
      end
    end
    send m, *args, &block
  end






end