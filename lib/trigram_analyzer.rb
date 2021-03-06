require 'string'

class TrigramAnalyzer

  def self.analyze_text(text, patterns = {})
    text.sentences.each do |sentence|
      analyze_sentence(sentence, patterns)
    end
    patterns
  end

  def self.analyze_sentence(sentence, patterns = {})
    sentence.trigrams.each do |trigram|
      patterns[trigram.first_two_words] ||= []
      patterns[trigram.first_two_words] << trigram.third_word
    end
    patterns
  end
end

