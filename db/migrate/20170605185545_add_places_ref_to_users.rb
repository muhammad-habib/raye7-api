class AddPlacesRefToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :home, foreign_key: { to_table: :places }
    add_reference :users, :work, foreign_key: { to_table: :places }
  end
end
