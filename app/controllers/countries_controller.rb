class CountriesController < ApiController

  def index
    countries = CountryIndex.query(conditions)
    # highlight = countries.highlight(fields: { title: { pre_tags: ["<strong>"], post_tags: ["</strong>"] } } ).load.to_a.first._data["highlight"]
    # countries = countries.filter(term: { oon_status: true })
    # countries = countries.min_score(1)
    # countries = countries.query(range)
    # countries = countries.order(capacity: :desc)
    # countries = countries.query(match_param)
    # countries = countries.query(existing) # https://www.elastic.co/guide/en/elasticsearch/reference/current/query-dsl-exists-query.html
    # countries = countries.query(prefix)
    # suggest = countries.suggest('title': { text: query, term: { field: 'title'} } ).suggest
    countries = countries.load.to_a.map(&:attributes)
    render json: { countries: countries}#, highlight: highlight }#, suggest: suggest }
  end

  private

  def conditions
    return { match_all: {} } if params[:query].blank?
    query_condition 
  end

  def prefix
    { prefix: { title: {value: 'ит'} } }
  end

  def query_condition
    { multi_match: { fields: fields, query: query, analyzer: :nGram_analyzer} }
  end

  # def query_condition_boost
  #   { multi_match: { fields: ['title^5', "cities.title"], query: query, analyzer: :nGram_analyzer} }
  # end

  def existing
    { exists: { field: :capital} }
  end

  def match_param
    { bool: {
        must: {
          match: {
            "cities.title": "Сеул"
          }
        }
      }
    }
  end

  def query
    "*#{params[:query]}*"
  end

  def fields
    ["title", "cities.title", "cities.capacity"]
  end

  def range
    { 
      range: {
        'count_of_parties'=> {
          lte: 2,
          boost: 5.0
        }
      }
    }
  end
end

 