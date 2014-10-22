require 'set'
require_relative 'named_thing'

class Monster
  include NamedThing
  attr_accessor :vulnerabilities, :dangers, :name
  attr_reader :nocturnal, :legs

  @@monster_count = 0
  @@monster_types = Set.new
  @@monster_horde = []

  def self.inherited klass
    puts "#{klass} is a new type of Monster - oh noes!"
    @@monster_types.add klass
  end

  def self.types
    @@monster_types.to_a.join(', ')
  end

  def self.count
    @@monster_count
  end

  def self.roll_call
    @@monster_horde
  end

  def initialize noc, legs, name="Monster", vul = [], dangers = []
    @name            = name
    @nocturnal       = noc
    @vulnerabilities = vul
    @dangers         = dangers
    @legs            = legs

    @@monster_horde << self.class.to_s
    @@monster_count += 1
  end

public

  def attack human
    puts "#{name} #{dangers.sample} #{human.name}!!"
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
