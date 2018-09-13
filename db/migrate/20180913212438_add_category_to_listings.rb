class AddCategoryToListings < ActiveRecord::Migration[5.1]
  def change
    add_column :listings, :listing_category_id, :integer
  end
end
