class Ammenity < ApplicationRecord
  has_many :listing_ammenities
  has_many :listings, through: :listing_ammenities

  def name_with_state
    name.to_s
  end
end
