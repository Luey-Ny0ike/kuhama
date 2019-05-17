class AddMainCategoryToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :main_category, :string
  end
end
