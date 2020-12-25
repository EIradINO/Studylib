class CreateTiplikes < ActiveRecord::Migration[6.0]
  def change
    create_table :tiplikes do |t|
      t.integer :user_id
      t.integer :artip_id

      t.timestamps
    end
  end
end
