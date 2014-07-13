class WordWrapper
  def initialize(word_generator)
    @word_generator = word_generator
  end

  def word
    @word_generator.word
  end

  def meaning
    @word_generator.meaning
  end
end