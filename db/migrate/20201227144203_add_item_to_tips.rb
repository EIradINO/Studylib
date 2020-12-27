class AddItemToTips < ActiveRecord::Migration[6.0]
  def change
    add_column :tips, :item, :text
  end
end
