class CountriesController < ApiController

  def index
    countries = CountryIndex.query(conditions)
    # countries = countries.filter(term: { oon_status: true })
    # countries = countries.query(range)
    # countries = countries.order(capacity: :asc)
    # countries = countries.query(match_param)
    # countries = countries.query(existing)
    # countries = countries.query(prefix)
    countries = countries.load.to_a.map(&:attributes)
    render json: countries
  end

  private

  def conditions
    return { match_all: {} } if params[:query].blank?
    query_condition 
  end

  def prefix
    # { prefix: { title: {value: 'ит'} } }
  end

  def query_condition
    { query_string: { fields: fields, query: query } }
  end

  def existing
    { exists: { field: :capital } }
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
    ["title", "continent", "cities.title", "cities.capacity"]
  end

  def range
    { bool: {
        filter: {
          range: {
            count_of_parties: {
              lte: 3
            }
          }
        }
      }
    }
  end
end

 