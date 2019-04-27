class ListingCategory < ApplicationRecord
  has_many :listings
  has_one_attached :image
  def name_with_state
"#{name}"
  end
end
