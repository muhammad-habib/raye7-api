class AddRefsToTrips < ActiveRecord::Migration[5.0]
  def change
    add_reference :trips, :driver, foreign_key: { to_table: :users }
    add_reference :trips, :source, foreign_key: { to_table: :places }
    add_reference :trips, :destination, foreign_key: { to_table: :places }
  end
end
