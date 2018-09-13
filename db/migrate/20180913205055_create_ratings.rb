class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.references :listing, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end
