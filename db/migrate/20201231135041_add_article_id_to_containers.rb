class AddArticleIdToContainers < ActiveRecord::Migration[6.0]
  def change
    add_column :containers, :article_id, :integer
  end
end
