require_relative '../spec_helper'
require_relative 'timer'

describe Timer do

  it "should run our code" do
    expect { |block|
      Timer.time_code &block
    }.to yield_with_no_args
    # flag = false
    # Timer.time_code do
    #   flag = true
    # end
    # expect(flag).to be true
  end

  it "should time our code" do
    #Timer.stub(:get_start_time).and_return(1)
    #Timer.stub(:get_time_difference).and_return(4)
    Time.stub(:now).and_return(0,3)
    result = Timer.time_code do
    end
    result.should be_within(0.1).of(3.0)
  end

  it "should run our code multiple times" do
    count = 0
    Timer.time_code(5) do
      count +=1
    end
    count.should eq 5
  end

  it "should return the average runtime" do
    #Timer.stub(:get_time_difference).and_return(1)
    Time.stub(:now).and_return(0,1,0,1)
    result = Timer.time_code(2) do
    end
    result.should be_within(0.1).of(1.0)
  end

end