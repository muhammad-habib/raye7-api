class CreateBookmarkListsBookmarks < ActiveRecord::Migration[5.0]
  def change
    create_table :bookmark_lists_bookmarks do |t|
      t.integer :bookmark_list_id
      t.integer :bookmark_id

      t.timestamps
    end
  end
end
