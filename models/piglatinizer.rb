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

# I have to:
# split phrase into individual words
# find first consonant
# cut first part of word through the first consonant from string
# add cut part to end of word with 'ay'
# combine words together again
