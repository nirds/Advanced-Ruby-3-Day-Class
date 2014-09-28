module FakeEnumerable
  def map
    return self.enum_for unless block_given?
    [].tap { |out| each { |e| out << yield(e) } }
  end

  def select
    return self.enum_for unless block_given?

    [].tap { |out| each { |e| out << e if yield(e) } }
  end

  def sort_by
    return self.enum_for unless block_given?

    map { |a| [yield(a), a] }.sort.map { |a| a[1] }
  end

  def reduce(operation_or_value = nil)
    case operation_or_value
    when Symbol
      # convert things like reduce(:+) into reduce { |s,e| s + e }
      return reduce { |s,e| s.send(operation_or_value, e) }
    when nil
      accumulator = nil
    else
      accumulator = operation_or_value
    end

    each do |a|
      if accumulator.nil?
        accumulator = a
      else
        accumulator = yield(accumulator, a)
      end
    end

    accumulator
  end
end