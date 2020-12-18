class AddArticleIdToArtips < ActiveRecord::Migration[6.0]
  def change
    add_column :artips, :article_id, :integer
  end
end
