class AddArticleIdToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :article_id, :integer
  end
end
