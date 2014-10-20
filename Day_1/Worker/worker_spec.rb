require_relative 'worker'

describe Worker do

  it 'executes a block and returns a string' do
    result = Worker.work do
      'hello'
    end
    expect(result).to eq('hello')
  end

  it 'executes a block and returns a number' do
    result = Worker.work do
      3 + 4
    end
    expect(result).to eq(7)
  end

  it 'executes a block in the context of the calling method' do
    n = 1
    result = Worker.work do
      n + 4
    end
    expect(result).to eq(5)
  end


  it 'executes a block 3 times and returns the result' do
    n = 5
    result = Worker.work(3) do
      n += 1
    end
    expect(result).to eq(8)
  end

end