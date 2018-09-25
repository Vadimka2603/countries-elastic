class BaseIndex < Chewy::Index
  settings analysis: {
    filter: {
      nGram_filter: {
        type: 'nGram',
        min_gram: 1,
        max_gram: 50,
        token_chars: %w[letter digit punctuation symbol]
      }
      # hunspell_filter: {
      #   type: 'hunspell',
      #   locale: 'ru_Ru',
      #   dedup: true
      # }
      # length_filter: {
      #   type: 'length',
      #   min: 7
      # },
      # my_stop_filter: {
      #   type: 'stop',
      #   stopwords: 'северная'
      # }# },
      # synonym_filter: {
      #   type: 'synonym',
      #   lenient: true,
      #   synonyms: ["узбекистан, китай => восточные"]
      # }
    },
    analyzer: {
      nGram_analyzer: {
        type: 'custom',
        tokenizer: 'whitespace',
        filter: %w[lowercase asciifolding nGram_filter]
      }
    }
  }
end

# reverse