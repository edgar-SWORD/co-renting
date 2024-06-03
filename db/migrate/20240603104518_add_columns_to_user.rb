class AddColumnsToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address, :string
    add_column :users, :avatar_url, :string
    add_column :users, :alternance, :string
    add_column :users, :rythm, :string
    add_column :users, :long_description, :text
    add_column :users, :job_title, :string
    add_column :users, :tagline, :string
    add_column :users, :min_budget, :float
    add_column :users, :max_budget, :float
  end
end
