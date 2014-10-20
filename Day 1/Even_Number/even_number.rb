class EvenNumber
  include Comparable
  attr_reader :value

  def initialize(input)
    @value = input
  end

  def succ
    EvenNumber.new(@value + 2)
  end

  def <=>(other)
    @value <=> other.value
  end

  def to_s
    @value.to_s
  end
end