class Country < ApplicationRecord
  enum continent: ['Северная Америка', 'Южная Америка', 'Европа', 'Азия']

  has_many :cities, dependent: :destroy

  # update_index 'country#country', :self, urgent: true
end
