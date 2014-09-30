require_relative 'kernel'

class Monster
  class_attr_accessor :types, :type_count
  attr_accessor :vulnerabilities, :dangers, :name
  attr_reader :nocturnal, :legs

  @@monster_count = 0
  @@type_count = 0
  @@types = []

  def self.inherited klass
    puts "#{klass} is a new type of Monster - oh noes!"
    @@type_count += 1
    @@types << klass
  end

  def self.count
    @@monster_count
  end

  def initialize noc, legs, name="Monster", vul = [], dangers = []
    @name            = name
    @nocturnal       = noc
    @vlunerabilities = vul
    @dangers         = dangers
    @legs            = legs

    @@monster_count += 1
  end

public

  def attack human
    puts "#{name} #{dangers.sample} #{human.name}!!"
  end

  def say_name
    "My name is #{@name}"
  end

  def shout_name
    @name.upcase
  end

protected

  def whisper_creepily
    puts "boooo....."
  end

private

  def set_nocturnal_to_false
    @nocturnal = false
  end

end
