class CreateProfileResearches < ActiveRecord::Migration[7.1]
  def change
    create_table :profile_researches do |t|
      t.references :user, null: false, foreign_key: true
      t.references :flat, null: false, foreign_key: true
      t.string :location

      t.timestamps
    end
  end
end
