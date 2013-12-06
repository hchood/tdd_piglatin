class PigLatinTranslator
  def self.translate(phrase)
    words = phrase.split(/ /)
    translated_words = []
    words.each do |word|
      if self.starts_with_vowel?(word)
        translated_word = word << 'way'
      else
        string = word
        until self.starts_with_vowel?(string)
          string = self.rotate_consonant(string)
        end
        translated_word = string + 'ay'
      end
      translated_words << translated_word
    end
    translated_phrase = translated_words.join(' ')
  end

  private
  def self.starts_with_vowel?(word)
    word.downcase.match(/^[aeiou]/)
  end

  def self.rotate_consonant(word)
    array_of_letters = word.split(//)
    first_letter = array_of_letters.shift
    word = array_of_letters.join << first_letter
  end
end

# test = PigLatinTranslator.translate('string')
