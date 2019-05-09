class AddFieldsToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :rooms, :integer
    add_column :listings, :bathrooms, :integer
    add_column :listings, :size, :integer
  end
end
