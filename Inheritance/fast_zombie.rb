require_relative 'zombie'

class FastZombie < Zombie

  class << self
    def count
      @@zombie_count
    end
    alias_method :fast_zombie_count, :count
  end

   @@zombie_count = 0

  def initialize
    super
    @@zombie_count += 1
  end

  def run_fast
    puts "run fast"
  end

  def run
    puts "RUNNING!"
  end
end