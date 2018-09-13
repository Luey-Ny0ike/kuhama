class AddExtraFieldsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :number, :integer
    add_column :users, :website, :string
    add_column :users, :notes, :text
    add_column :users, :facebook, :string
    add_column :users, :twitter, :string
    add_column :users, :instagram, :string
  end
end
