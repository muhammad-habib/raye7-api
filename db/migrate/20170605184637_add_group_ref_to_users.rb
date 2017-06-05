class AddGroupRefToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :group, foreign_key: { to_table: :groups }
  end
end
