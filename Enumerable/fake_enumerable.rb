require './fake_enumerator'

module FakeEnumerable
  def each
    if block_given?
      @data.each { |e| yield(e) }
    else
      FakeEnumerator.new(self, :each)
    end
  end

  def map
  end

  def select
  end

  def sort_by
  end

  def reduce(*args)
  end
end