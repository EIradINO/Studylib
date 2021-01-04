class AddFieldToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :field, :string
  end
end
