class OddNumber
  include Comparable
  attr_reader :val

  def self.new val
    raise "Only odd values are allowed." if val.even?
    super
  end

  def initialize val
    @val = val
  end

  def succ
    self.class.new(@val + 2)
  end

  def <=> other
    @val <=> other.val
  end
end