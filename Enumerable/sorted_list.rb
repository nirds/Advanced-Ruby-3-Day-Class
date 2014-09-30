require_relative './fake_enumerable'

class SortedList
  include FakeEnumerable

  def initialize *args
    @data = args
  end

  def << new_element
    @data << new_element
    @data.sort!

    self
  end

  def each
    return self.to_enum unless block_given?
    @data.each { |i| yield i }
  end
end