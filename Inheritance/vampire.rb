require_relative 'monster.rb'

class Vampire < Monster
  DEFAULT_VUL = [:garlic, :sunlight]
  attr_reader :coffin_location

  def initialize coffin_location, noc=true, legs=2, name ="Vampire", vul=DEFAULT_VUL, dangers=[:bites]
    @coffin_location = coffin_location
    @am_i_human      = true

    super noc, legs, name, vul, dangers
  end

  def drink blood
    puts "Yummm!"
  end

  def bite human
    puts "#{human.name} was tasty!"
  end

  def is_bat?
    !is_human?
  end

  def is_human?
    @am_i_human
  end

  def make_them_whisper other_monster
    puts "#{self.kind_of? Monster}"
    other_monster.whisper_creepily
  end

  def turn_you_into_bat other_vamp
    other_vamp.turn_into_bat self
  end

  def attack! human
    puts "hi from Vampire"
  end

protected

  def turn_into_bat calling_vamp
    puts "Vampire #{calling_vamp.name} turned #{self.name} into a BAT!"
    @am_i_human = false
  end

private

  def turn_into_human
    puts "I'm now human."
    @am_i_human = true
  end
end
