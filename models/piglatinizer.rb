class PigLatinizer
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def latinize_words
    binding.pry
    words_array = text.split(" ")
    binding.pry
  end

end
