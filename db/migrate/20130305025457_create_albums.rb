class CreateAlbums < ActiveRecord::Migration
  def down
    drop_table :albums
  end
  def change
    create_table :albums do |t|
      t.string :album_name
      t.string :album_description
      t.integer :user_id

      t.timestamps
    end
  end
end
