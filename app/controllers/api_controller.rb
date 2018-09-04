class ApiController < ApplicationController
  before_action :enable_cross_origin

  private

  def enable_cross_origin
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Expose-Headers'] = 'ETag'
    headers['Access-Control-Allow-Methods'] = 'GET, POST, PATCH, PUT, DELETE, OPTIONS, HEAD'
    headers['Access-Control-Allow-Headers'] =
      '*,x-requested-with,Content-Type,If-Modified-Since,If-None-Match, X-Auth-Token,Access-Control-Allow-Headers'
    headers['Access-Control-Max-Age'] = '86400'
  end

  def cache(key, expires_in = 1.minute)
    Rails.cache.fetch(key, expires_in: expires_in) do
      yield
    end
  end
end
