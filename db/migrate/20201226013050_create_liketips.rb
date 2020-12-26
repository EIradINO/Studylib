class CreateLiketips < ActiveRecord::Migration[6.0]
  def change
    create_table :liketips do |t|
      t.integer :user_id
      t.integer :tip_id

      t.timestamps
    end
  end
end
