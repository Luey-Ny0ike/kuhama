class ListingCategory < ApplicationRecord
  has_many :listings

  def name_with_state
"#{name}"
  end
end
