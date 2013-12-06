require 'rspec'
require_relative 'pig_latin_translator'

describe PigLatinTranslator do
  it 'translates a word starting in a vowel' do
    expect(PigLatinTranslator.translate('animal')).to eql('animalway')
  end

  it 'translates a word starting in a consonant' do
    expect(PigLatinTranslator.translate('piano')).to eql('ianopay')
  end

  it 'translates a word starting in a consonant cluster' do
    expect(PigLatinTranslator.translate('string')).to eql('ingstray')
  end

  it 'returns a string containing each word of the phrase, translated' do
    expect(PigLatinTranslator.translate('animal piano string')).to eql('animalway ianopay ingstray')
  end

  it 'treats y as a consonant if it is at the beginning of the word' do
    expect(PigLatinTranslator.translate('yellow')).to eql('ellowyay')
  end

  it 'treats a mid-word y as a vowel' do
    expect(PigLatinTranslator.translate('trying')).to eql('yingtray')
  end
end
