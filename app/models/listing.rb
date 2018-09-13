class Listing < ApplicationRecord
  has_many :ratings
  belongs_to :listing_category
end
