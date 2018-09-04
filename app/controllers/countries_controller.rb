class CountriesController < ApiController

  def index
    countries = CountryIndex.query(conditions)
    render json: countries
  end

  private

  def conditions
    return { match_all: {} } if query.blank?
    { query_string: {"fields": ["title", "continent"], "query": "*#{query}*"} }
  end

  def query
    params[:query]
  end
end

 