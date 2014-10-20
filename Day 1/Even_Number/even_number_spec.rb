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
    odd_numbers = EvenNumber.new(2)..EvenNumber.new(10)
    expect(odd_numbers).to be_kind_of(Range)
  end
end