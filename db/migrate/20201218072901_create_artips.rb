class CreateArtips < ActiveRecord::Migration[6.0]
  def change
    create_table :artips do |t|
      t.text :content

      t.timestamps
    end
  end
end
