require 'rspec'
require_relative 'pig_latin_translator'

describe PigLatinTranslator do
  it 'translates a word starting in a vowel' do
    expect(PigLatinTranslator.translate('animal')).to eql('animalway')
  end

  it 'translates a word starting in a consonant'

  it 'translates a word starting in a consonant cluster'

  it 'returns a string containing each word of the phrase, translated'
end
