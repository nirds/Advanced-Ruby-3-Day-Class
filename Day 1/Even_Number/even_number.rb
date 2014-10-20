class EvenNumber
  include Comparable
  attr_reader :value

  def initialize(input)
    unless input.is_a?(Integer) && input.even?
      raise TypeError
    end

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