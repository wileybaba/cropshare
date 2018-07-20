class Location < ApplicationRecord
  belongs_to :share, optional: true 
end
