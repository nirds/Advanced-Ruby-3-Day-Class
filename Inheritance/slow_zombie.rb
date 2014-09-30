require_relative 'zombie'

class SlowZombie < Zombie

  def shamble
    puts "run sloooowly"
  end
end