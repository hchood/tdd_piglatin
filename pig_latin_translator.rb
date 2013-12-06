class PigLatinTranslator
  def self.translate(phrase)
      if self.starts_with_vowel?(phrase)
        phrase << 'way'
      else
        string = phrase
        until self.starts_with_vowel?(string)
          array_of_letters = string.split(//)
          first_letter = array_of_letters.shift
          string = array_of_letters.join << first_letter
        end
        string << 'ay'
      end
  end

  private
  def self.starts_with_vowel?(word)
    word.downcase.match(/^[aeiou]/)
  end

  def self.rotate_consonant(word)
    string = word
    until self.starts_with_vowel?(string)
      array_of_letters = string.split(//)
      first_letter = array_of_letters.shift
      string = array_of_letters.join << first_letter
    end
    string
  end
end
