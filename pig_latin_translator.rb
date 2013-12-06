class PigLatinTranslator
  def self.translate(phrase)
    if self.starts_with_vowel?(phrase)
      phrase << 'way'
    else
      array_of_letters = phrase.split(//)
      first_letter = array_of_letters.shift
      array_of_letters.join << first_letter + 'ay'
    end
  end

  private
  def self.starts_with_vowel?(word)
    word.downcase.match(/^[aeiou]/)
  end
end
