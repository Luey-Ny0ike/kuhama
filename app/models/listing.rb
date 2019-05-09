class Listing < ApplicationRecord
  has_many :ratings
  belongs_to :listing_category
  belongs_to :user
  has_many_attached :images
  has_many :listing_ammenities
  has_many :ammenities, through: :listing_ammenities
end
