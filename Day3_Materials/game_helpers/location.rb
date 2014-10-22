class Location

  def self.all
    @@locations
  end

  def self.all_names
    all.map{|l| l.name}
  end

  @@locations = []

  attr_accessor :name

  def initialize
    @@locations << self
  end
end