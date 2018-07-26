class Location < ApplicationRecord
  belongs_to :share, optional: true
  after_validation :geocode

  def address
    [street, city, state, country].compact.join(', ')
  end

  geocoded_by :address


end
