require_relative './fake_enumerable'

class SortedList
  include FakeEnumerable

  def initialize
    @data = []
  end

  def <<(new_element)
    @data << new_element
    @data.sort!

    self
  end

  def each
    return @data.each { |e| yield(e) } if block_given?
    @data
  end
end
