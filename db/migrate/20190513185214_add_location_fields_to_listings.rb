class AddLocationFieldsToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :street, :string
    add_column :listings, :city, :string
    add_column :listings, :state, :string
    add_column :listings, :country, :string
  end
end
