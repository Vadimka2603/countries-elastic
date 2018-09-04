class City < ApplicationRecord
  belongs_to :country, required: true
end
