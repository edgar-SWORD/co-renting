class CreateCouples < ActiveRecord::Migration[7.1]
  def change
    create_table :couples do |t|
      t.references :first_profile, null: false, foreign_key: { to_table: :profile_researches }
      t.references :second_profile, null: false, foreign_key: { to_table: :profile_researches }

      t.timestamps
    end
  end
end
