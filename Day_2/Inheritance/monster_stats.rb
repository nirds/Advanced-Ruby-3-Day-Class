require 'set'
require_relative 'fast_zombie'
require_relative 'slow_zombie'
require_relative 'dracula'
require_relative 'mummy'
require_relative 'human'

zambies = []
(1..5).each do
  zambies << FastZombie.new
end
(1..3).each do
  zambies << SlowZombie.new
end
Dracula.new
puts "The zombies collectively have #{zambies.map{|x| x.legs}.reduce(:+)} legs"
puts "The following types of monster exist: #{Monster::types}"
puts "There are #{Monster.roll_call.select{|x| x.include? 'Zombie'}.count} zombies"
puts "There are #{Monster.roll_call.select{|x| x.include? 'FastZombie'}.count} fast zombies and #{Monster.roll_call.select{|x| x.include? 'SlowZombie'}.count} slow zombies"