require 'rspec'
require_relative 'timer'

describe Timer do

  it 'runs our code' do
    expect{|block| Timer.time_code &block}.to yield_with_no_args
  end

  it 'runs sleep(1) for 1 second' do
    allow(Time).to receive(:now).and_return(0,1)
    start = Time.now
    Timer.time_code { }
    expect(Time.now - start).to eq(1)
  end

  it 'runs our code multiple times' do
    count = 0
    Timer.time_code(5) { count += 1 }

    expect(count).to eq(5)
  end

  it 'averages runtime correctly' do
    allow(Time).to receive(:now).and_return(*(0..5))
    expect(Timer.time_code(3) { }).to eq(1)
  end
end