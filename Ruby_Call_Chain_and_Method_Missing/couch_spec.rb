require 'minitest/autorun'
require_relative 'couch.rb'

describe Couch do
  before :each do
    @couch = Couch.new [:red, :red, :black, :black], [:grey, :grey], ['Bradley', 'Sticks']
  end
  it "should count the pillows" do
    @couch.how_many_pillows?.must_equal 4
  end

  it "should count the cushions" do
    @couch.how_many_cushions?.must_equal 2
  end

  it "should count the dogs" do
    @couch.how_many_dogs?.must_equal 2
  end

  it "should respond to something silly with what you called" do
    @couch.something_silly.must_equal 'you called something_silly'
  end

  it "should respond to something silly" do
    @couch.respond_to?(:happy).must_equal true
  end

  it "should define something silly with my block" do
    @couch.happy{|mm| "#{mm} hello world"}.must_equal "method missing hello world"
    @couch.happy{"hi"}.must_equal "method missing hello world"
  end

end