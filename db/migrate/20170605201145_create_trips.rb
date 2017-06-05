class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.timestamps :departure
      t.integer :seats

      t.timestamps
    end
  end
end
