class PigLatinizer
  VOWELS = ["a", "e", "i", "o", "u"]
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def latinize_words
    words_array = text.split(" ")

    words_array.map do |word|
      binding.pry
      if find_first_vowel_index(word) == 0
        result = word + "way"
      else
        binding.pry
        first_group = first_part(word)
        result = word.gsub(first_group, "")
        result = result + first_group
        result = result + "ay"
      end
    end.join(" ")
  end

  def ending(word)
    if begins_with_vowel?(word)
      "way"
    else
      "ay"
    end
  end

  def is_consonant?(letter)
    letter.scan(/[^aeouiAEOUI]/).empty
  end

  def first_part(word)
    first_group = []

    (0..find_first_vowel_index-1).each do |i|
      first_group << word[i]
    end
    binding.pry
    first_group
  end

  def find_first_vowel_index(word)
    word.split("").each.with_index do |letter, i|
      return i if VOWELS.include?(letter)
    end
  end

  def begins_with_vowel?(word)
    !word.split('').first.scan(/[aeouiAEOUI]/).empty?
  end
end

# I have to:
# split phrase into individual words
# find first consonant
# cut first part of word through the first consonant from string
# removed first part and add to the end with 'ay'
# add cut part to end of word with 'ay'
# combine words together again
