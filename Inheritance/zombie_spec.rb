require 'minitest/autorun'
require_relative 'spec_helper'
require_relative 'zombie'

describe Zombie do

  it "counts the zombies" do
    zombie_count = -> { Zombie.count }
    assert_change(zombie_count) do
      Zombie.new
    end
  end

  it "only counts zombies" do
    Monster.new false, 2
    Zombie.new
    Zombie.count.must_equal 1
  end

end
