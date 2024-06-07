class SetFlatIdToNullFromProfileResearch < ActiveRecord::Migration[7.1]
  def change
    change_column_null :profile_researches, :flat_id, true
  end
end
