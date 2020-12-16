class AddArticleIdToTips < ActiveRecord::Migration[6.0]
  def change
    add_column :tips, :article_id, :integer, default: 0
  end
end
