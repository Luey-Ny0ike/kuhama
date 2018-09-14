class Listing < ApplicationRecord
  has_many :ratings
  belongs_to :listing_category
  belongs_to :user
end
