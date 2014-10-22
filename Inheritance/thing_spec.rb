#require_relative '../spec_helper'
require_relative 'class_attrs'

class Thing
  using ClassAttrs
  class_attr_accessor :count
  @@count = 2
end

describe 'Class Attr Accessors' do

  it "should add class variable reader" do
    Thing.count.should eq 2
  end

  it "should add class variable writer" do
    Thing.count = 4
    Thing.count.should eq 4
  end

end