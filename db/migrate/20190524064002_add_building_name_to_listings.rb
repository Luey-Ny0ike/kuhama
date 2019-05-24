class AddBuildingNameToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :building_name, :string
  end
end
