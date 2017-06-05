class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :name
      t.numeric :longitude
      t.numeric :latitude
      t.timestamps
    end
  end
end
