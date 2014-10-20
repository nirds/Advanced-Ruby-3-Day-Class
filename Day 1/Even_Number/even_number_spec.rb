require 'rspec'
require_relative('even_number')

describe EvenNumber do

  it 'gives us an EvenNumber instance for 2' do
    expect(EvenNumber.new(2)).to_not be_nil
  end

  it 'gives EvenNumber 4 as the successor to EvenNumber 2' do
    expect(EvenNumber.new(2).succ).to eq(EvenNumber.new(4))
  end
end