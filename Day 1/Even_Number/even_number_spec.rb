require 'rspec'
require_relative('even_number')

describe EvenNumber do

  it 'gives us an EvenNumber instance for 2' do
    expect(EvenNumber.new(2)).to_not be_nil
  end

  it 'gives EvenNumber 4 as the successor to EvenNumber 2' do
    expect(EvenNumber.new(2).succ).to eq(EvenNumber.new(4))
  end

  it 'returns the value' do
    expect(EvenNumber.new(2).value).to eq(2)
  end

  it 'gives us a range of EvenNumbers' do
    even_numbers = EvenNumber.new(2)..EvenNumber.new(6)
    expect(even_numbers).to be_kind_of(Range)
  end

  it 'gives us the right values for our EvenNumber range' do
    even_numbers = EvenNumber.new(2)..EvenNumber.new(6)

    expect(even_numbers.to_a).to eq([EvenNumber.new(2), EvenNumber.new(4), EvenNumber.new(6)])
  end

  context 'when initialized with something other than an even number' do
    it 'raises a TypeError when initialized with an odd number' do
      expect{EvenNumber.new(3)}.to raise_error(TypeError)
    end

    it 'raises a TypeError when initialized with a string' do
      expect{EvenNumber.new('panda')}.to raise_error(TypeError)
    end
  end
end