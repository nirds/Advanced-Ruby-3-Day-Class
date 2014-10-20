module PigLatinTranslator
  VOWELS = /[aeiou]/

  def translate(input)
    result = []
    input.split.each do |word|
      result << translate_word(word)
    end
    result.join(' ')
  end

  def translate_word(input)

    capitalized = input[0] == input[0].upcase

    first_vowel = input.index(VOWELS)

    if first_vowel.nil? || first_vowel == 0
      return "#{input}ay"
    end

    if input[0..1] == 'qu'
      first_vowel = 2
    end

    result = "#{input[first_vowel..-1]}#{input[0..first_vowel-1]}ay"

    if capitalized
      result.capitalize
    else
      result
    end
  end

end