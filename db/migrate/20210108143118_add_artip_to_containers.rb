class AddArtipToContainers < ActiveRecord::Migration[6.0]
  def change
    add_column :containers, :artip, :text
  end
end
