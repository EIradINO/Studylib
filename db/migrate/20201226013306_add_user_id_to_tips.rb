class AddUserIdToTips < ActiveRecord::Migration[6.0]
  def change
    add_column :tips, :user_id, :integer
  end
end
