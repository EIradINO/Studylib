class RemaneContentsColumnToArticles < ActiveRecord::Migration[6.0]
  def change
    rename_column :articles, :contents, :content
  end
end
