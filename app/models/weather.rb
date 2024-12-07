class Weather < ApplicationRecord
  validates :date, presence: true, format: { with: /\d{4}-\d{2}-\d{2}/ }
  validates :lat, presence: true
  validates :lon, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :temperatures, presence: true
end
