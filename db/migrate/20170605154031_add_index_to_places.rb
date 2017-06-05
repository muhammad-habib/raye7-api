class AddIndexToPlaces < ActiveRecord::Migration[5.0]
  def change
    add_index :places, :name, unique: true
  end
end
