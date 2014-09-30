require 'minitest/autorun'
require_relative '../sorted_list'

describe "FakeEnumerable" do
  before do
    @list = SortedList.new

    # will get stored internally as 3,4,7,13,42
    @list << 3 << 13 << 42 << 4 << 7
  end

  it "supports map" do
    @list.map { |x| x + 1 }.must_equal([4,5,8,14,43])
    
    enum = @list.map
    enum.next.must_equal(3)
  end

  it "supports sort_by" do
    # ASCII sort order
    @list.sort_by { |x| x.to_s }.must_equal([13, 3, 4, 42, 7])
    
    enum = @list.sort_by
    enum.next.must_equal(3)
  end

  it "supports select" do
    @list.select { |x| x.even? }.must_equal([4,42])
    
    enum = @list.select
    enum.next.must_equal(3)
  end

  it "supports reduce" do
    @list.reduce(:+).must_equal(69)
    @list.reduce("+").must_equal(69)
    @list.reduce { |s,e| s + e }.must_equal(69)
    @list.reduce(-10) { |s,e| s + e }.must_equal(59)
    @list.reduce(-10, :+).must_equal(59)
    @list.reduce(:numbers){|s,e| s.to_s + e.to_s }.must_equal("numbers3471342")
    @list.reduce("numbers"){|s,e| s + e.to_s }.must_equal("numbers3471342")
  end
end
