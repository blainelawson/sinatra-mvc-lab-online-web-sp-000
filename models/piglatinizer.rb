class PigLatinizer
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def latinize_words
    words_array = text.split(" ")
    words_array.each do |word|


  end

  def first_consonant(word)
    consonant = word.scan(/[^aeouiAEOUI]/).first
  end

  def first_part(word)
    consonant = first_consonant(word)
    part_1 = []
    word.split('').each do |letter|
      if letter != consonant
        part_1 << letter
      else
        break
      end
    end
    part_1
end

# I have to:
# split phrase into individual words
# find first consonant
# cut first part of word through the first consonant from string
# add cut part to end of word with 'ay'
# combine words together again
