class ListingValidator < ActiveModel::Validator
  def validate(record)
    unless record.images.count > 2 == true
      record.errors[:images] << 'need to be three or more'
    end
    if record.listing_category.name == "Land" && record.size.blank?
      record.errors[:size] << 'needs to be present for land listings'
    end
    if record.listing_category.name == "Houses" or record.listing_category.name == "Flats & Apartments" && record.rooms.blank?
      record.errors[:rooms] << 'number should be present'
    end
    if record.listing_category.name == "Houses" or record.listing_category.name == "Flats & Apartments" && record.bathrooms.blank?
      record.errors[:bathrooms] << 'number should be present'
    end
  end
end
