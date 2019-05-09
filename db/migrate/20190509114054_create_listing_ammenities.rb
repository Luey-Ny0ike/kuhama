class CreateListingAmmenities < ActiveRecord::Migration[5.2]
  def change
    create_table :listing_ammenities do |t|
      t.references :listing, foreign_key: true
      t.references :ammenity, foreign_key: true

      t.timestamps
    end
  end
end
