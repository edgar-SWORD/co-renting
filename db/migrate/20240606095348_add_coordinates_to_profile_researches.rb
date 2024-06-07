class AddCoordinatesToProfileResearches < ActiveRecord::Migration[7.1]
  def change
    add_column :profile_researches, :latitude, :float
    add_column :profile_researches, :longitude, :float
  end
end
