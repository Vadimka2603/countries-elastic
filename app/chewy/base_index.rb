class BaseIndex < Chewy::Index
  settings analysis: {
    filter: {
      nGram_filter: {
        type: 'nGram',
        min_gram: 2,
        max_gram: 50,
        token_chars: %w[letter digit punctuation symbol]
      }
    #   ru_RU: {
    #     type: 'hunspell',
    #     locale: 'ru_RU',
    #     dedup: true
    #   }
  },
    analyzer: {
      nGram_analyzer: {
        type: 'custom',
        tokenizer: 'whitespace',
        filter: %w[lowercase asciifolding nGram_filter]
      },
      whitespace_analyzer: {
        type: 'custom',
        tokenizer: 'whitespace',
        filter: %w[lowercase asciifolding nGram_filter]
      }
    }
  }
end

# english_morphology
# russian_morphology

# https://www.elastic.co/guide/en/elasticsearch/reference/current/analysis-ngram-tokenizer.html