class CountryIndex < BaseIndex
  define_type ::Country do
    root '_all': { analyzer: 'nGram_analyzer', search_analyzer: 'nGram_analyzer' } do
      field :title
      field :continent
    end
  end
end