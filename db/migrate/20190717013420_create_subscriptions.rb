class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.string :name
      t.integer :price
      t.text :features

      t.timestamps
    end
  end
end
