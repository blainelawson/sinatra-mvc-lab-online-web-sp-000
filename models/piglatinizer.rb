class PigLatinizer
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def latinize_words
    words_array = text.split(" ")

    words_array.map do |word|
      # binding.pry
      first_group = first_part(word)
      result = word.gsub(first_group, "")
      result = result + first_group
      result = result + ending(word)
      binding.pry
    end.join(" ")
binding.pry
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
    if begins_with_vowel?(word)
      part_1 = word
    else
      part_1 = []
      word.split('').each do |letter|
        if letter != consonant
          part_1 << letter
        else

        end
      end
      part_1.join("")
    end
    part_1
  end

  def find_first_vowel(word)
    word.split('').scan(/[aeouiAEOUI]/).first.index
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
