class Listing < ApplicationRecord
  include Filterable
  scope :rooms, -> (rooms) { where ("rooms >= " "#{rooms}") }
  scope :main_category, -> (main_category) { where main_category: main_category }
  scope :listing_category_id, -> (listing_category_id) { where listing_category_id: listing_category_id }
  scope :bathrooms, -> (bathrooms) { where ("bathrooms >= " "#{bathrooms}") }
  scope :asset_size, -> (size) { where ("size >= " "#{ size }") }
  scope :min_price, -> (min_price) { where ("listings.pricing >= " "#{ min_price }") }
  scope :max_price, -> (max_price) { where ("listings.pricing <= " "#{ max_price }") }

  def address
    [building_name, street, city, state, country].compact.join(', ')
  end
  geocoded_by :address
  after_validation :geocode
  has_many :ratings
  belongs_to :listing_category
  belongs_to :user
  has_many_attached :images
  has_many :listing_ammenities
  has_many :ammenities, through: :listing_ammenities

  # VALIDATIONS
  validates_presence_of :asset_name
  validates_presence_of :pricing
  validates_presence_of :rooms
  validates_presence_of :bathrooms
  validates_presence_of :phone_number
  validates_presence_of :email
  validates_presence_of :description
  validates_presence_of :images 
end
