require 'rspec'
require_relative 'pig_latin_translator'

describe '#translate' do
  include PigLatinTranslator

  context 'when words start with a single consonant' do
    it 'turns "happy" into "appyhay"' do
      expect(translate('happy')).to eq('appyhay')
    end

    it 'turns "sad" into "adsay"' do
      expect(translate('sad')).to eq('adsay')
    end
  end

  context 'when words start with a vowel' do
    it 'turns "apple" into "appleay"' do
      expect(translate('apple')).to eq('appleay')
    end
  end

  context 'when there are multiple consonants at the start of the word' do
    it 'turns "the" into "ethay"' do
      expect(translate('the')).to eq('ethay')
    end

    it 'turns "splat" into "atsplay"' do
      expect(translate('splat')).to eq('atsplay')
    end
  end

  context 'when there are no vowels' do
    it 'turns "hmmm" into "hmmmay"' do
      expect(translate('hmmm')).to eq('hmmmay')
    end

  end

  context 'when the word starts with "qu", treat the "u" as a consonant' do
    it 'turns "quick" into "ickquay"' do
      expect(translate('quick')).to eq('ickquay')
    end

    it 'does not turn "tuck" into "cktuay"' do
      expect(translate('tuck')).to_not eq('cktuay')
    end
  end

  context 'when the word starts with a capital letter' do
    it 'keeps the first letter capitalized' do
      expect(translate('Hello')).to eq('Ellohay')
    end
  end

  context 'when given multiple words' do
    it 'translates "Hello the world" to "Ellohay ethay orldway"' do
      expect(translate('Hello the world')).to eq('Ellohay ethay orldway')
    end
  end

end