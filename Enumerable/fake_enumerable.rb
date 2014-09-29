module FakeEnumerable

  def map
    return each unless block_given?
    matched = []
    each do |i|
      matched << yield(i)
    end
    matched
  end

  def select
    return each unless block_given?
    matched = []
    each do |i|
      matched << i if yield(i)
    end
    matched
  end

  def sort_by
    return each unless block_given?
    sorted = {}
    each do |i|
      sorted[i] = yield(i)
    end
    sorted.sort_by{|k,v| v}.map{|a| a.first}
  end

  def reduce *args, &block
    enum = each
    return looper args.first, enum, args.last if args.length == 2
    return looper args.first, enum, block if block_given?
    return looper nil, enum, args.last unless args.empty?
    enum
  end
  alias_method :inject, :reduce

private
  def looper value, enum, method
    loop do
      value ||= enum.next
      item = enum.next
      if method.respond_to? :call
        value = method.call value, item
      else
        value = value.send(method, item)
      end
    end
    value
  end
end