require_relative 'not_set'

module FakeEnumerable
  using NotSetBehavior

  def map
    return each unless block_given?
    each.inject([]){|m,i| m << yield(i); m}
  end

  def select
    return each unless block_given?
    each.inject([]){|m,i| m << i if yield(i); m}
  end

  def sort_by
    return each unless block_given?
    sorted = each.inject({}){|m,i| m[i] = yield(i); m}
    sorted.sort_by{|k,v| v}.map{|a| a.first}
  end

  def reduce *args, &block
    enum = each
    start_arg = NotSet.instance
    return looper args.first, enum, args.last if args.size == 2
    start_arg = args.first if args.size == 1
    return looper start_arg, enum, block if block_given?
    return looper enum, args.last unless args.empty?
    enum
  end
  alias_method :inject, :reduce

private

  def looper value = NotSet.instance, enum, method
    loop do
      value = enum.next if value.not_set?
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
