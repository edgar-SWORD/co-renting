class CreateFlats < ActiveRecord::Migration[7.1]
  def change
    create_table :flats do |t|
      t.integer :rooms
      t.boolean :is_furnished
      t.string :style

      t.timestamps
    end
  end
end
