require_relative 'monster'
require_relative 'biting_thing'
require_relative 'count_humans_converted'

require 'set'
class WereWolf < Monster
  include BitingThing
  extend CountHumansConvered
  attr_reader :humans_converted

  @@humans_converted = Set.new

  def initialize nocturnal: false, name: "WereWolf", legs: 4, dangers: [:bites], vulnerabilities: [:silver_bullets], humans_converted: []
    super nocturnal, legs,name, vulnerabilities, dangers
    @humans_converted = humans_converted
  end

  def convert! human
    bite human
    human.instance_eval do
      extend BitingThing
    end
    @humans_converted << human
    @@humans_converted << human
  end

  def converted_count
    @humans_converted.count
  end
end