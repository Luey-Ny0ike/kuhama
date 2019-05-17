class Listing < ApplicationRecord
  include Filterable
  scope :rooms, -> (rooms) { where ("rooms >= " "#{rooms}") }
  scope :main_category, -> (main_category) { where main_category: main_category }
  scope :bathrooms, -> (bathrooms) { where ("bathrooms >= " "#{bathrooms}") }
  scope :asset_size, -> (size) { where ("size >= " "#{ size }") }
  scope :min_price, -> (min_price) { where ("listings.pricing >= " "#{ min_price }") }
  scope :max_price, -> (max_price) { where ("listings.pricing <= " "#{ max_price }") }

  def address
    [street, city, state, country].compact.join(', ')
  end
  geocoded_by :address
  after_validation :geocode
  has_many :ratings
  belongs_to :listing_category
  belongs_to :user
  has_many_attached :images
  has_many :listing_ammenities
  has_many :ammenities, through: :listing_ammenities
end
