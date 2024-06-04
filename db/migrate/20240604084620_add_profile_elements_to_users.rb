class AddProfileElementsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :cleanliness, :string
    add_column :users, :lifestyle, :string
    add_column :users, :sharing, :string
    add_column :users, :cooking, :string
    add_column :users, :storage, :string
  end
end
