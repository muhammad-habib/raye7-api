class CreateJoinTableUserTrip < ActiveRecord::Migration[5.0]
  def change
    create_join_table :users, :trips do |t|
      t.belongs_to(:user, foreign_key: true)
      t.belongs_to(:trip, foreign_key: true)
    end
  end
end
