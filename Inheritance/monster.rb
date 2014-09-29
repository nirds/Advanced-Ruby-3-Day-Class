require_relative 'named_thing.rb'

class Monster
  include NamedThing
  attr_accessor :vulnerabilities, :dangers
  attr_reader :nocturnal, :legs

  @@monster_count = 0

  def self.count
    @@monster_count
  end

  def initialize noc, legs, name="Monster", vul = [], dangers = []
    super name
    @nocturnal = noc
    @vlunerabilities = vul
    @dangers = dangers
    @legs = legs
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
