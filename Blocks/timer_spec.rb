require 'minitest/autorun'
require_relative 'timer'

describe Timer do
  include Timer

  module Timer
    def get_start_time
      0
    end

    def get_time_difference st
      2 - st
    end
  end

  it "runs our code" do
    flag = false
    run_code do
      flag = true
    end
    flag.must_equal true
  end

  it "it times our code" do
    run_time = run_code do
      nil
    end
    refute_nil(run_time)
    run_time.must_be_close_to 2, 0.1
  end

  it "should run our code multiple times" do
    i = 0
    run_code(10) do
      i += 1
    end
    i.must_equal 10
  end

  it "should calculate the average run time" do
    run_time = run_code(10) do
    end
    run_time.must_be_close_to 2, 0.1
  end
end