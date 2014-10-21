require_relative 'monster'

require 'set'
class WereWolf < Monster
  attr_reader :humans_converted

  @@humans_converted = Set.new

  def initialize nocturnal: false, name: "WereWolf", legs: 4, dangers: [:bites], vulnerabilities: [:silver_bullets], humans_converted: []
    super nocturnal, legs,name, vulnerabilities, dangers
    @humans_converted = humans_converted
  end

  def bite human
    puts "#{human.name} was tasty!"
  end

  def convert! human
    bite human
    human.instance_eval do
      def bites?
        true
      end
    end
    @humans_converted << human
    @@humans_converted << human
  end

  def converted_count
    @humans_converted.count
  end
end