class EvenNumber
  attr_accessor :value

  def initialize(input)
    @value = input
  end

  def succ
    EvenNumber.new(@value + 2)
  end

  def ==(other)
    @value == other.value
  end

  def <=>(other)
    @value <=> other.value
  end
end