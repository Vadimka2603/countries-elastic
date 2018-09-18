class CountryIndex < BaseIndex
  define_type ::Country do
    root '_all': { analyzer: 'nGram_analyzer', search_analyzer: 'nGram_analyzer' } do
      field :title, fielddata: true
      field :continent, index: false
      field :count_of_parties, value: ->(resource) { rand(1..10) }, type: 'integer'
      field :capacity, value: ->(resource) { resource.cities.sum(:capacity) }, fielddata: true
      field :oon_status, value: ->(resource) { [true, false].sample }, fielddata: true
      field :capital, value: ->(resource) { 'Указана' if resource.cities.pluck(:description).join.include?('Столица') }, fielddata: true
      field :cities do
        field :title, fielddata: true
        field :capacity, fielddata: true
        field :description, value: ->(resource) { resource.capacity > 15_000 ? 'Бездушный город' : 'Все друг друга знают' }, fielddata: true
      end
    end
  end
end