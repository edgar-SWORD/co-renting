class CreateFlatPerks < ActiveRecord::Migration[7.1]
  def change
    create_table :flat_perks do |t|
      t.references :flat, null: false, foreign_key: true
      t.references :perk, null: false, foreign_key: true

      t.timestamps
    end
  end
end
