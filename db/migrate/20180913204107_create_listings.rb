class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.string :asset_name
      t.text :description
      t.string :pricing
      t.integer :phone_number
      t.sring :email
      t.string :website

      t.timestamps
    end
  end
end
