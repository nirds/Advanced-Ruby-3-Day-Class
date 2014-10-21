require_relative 'zombie.rb'

class SlowZombie < Zombie

  def shamble
    puts "..... I'm soooo slow!"
  end
end