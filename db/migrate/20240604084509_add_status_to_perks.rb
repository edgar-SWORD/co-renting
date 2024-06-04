class AddStatusToPerks < ActiveRecord::Migration[7.1]
  def change
    add_column :perks, :status, :string
  end
end
