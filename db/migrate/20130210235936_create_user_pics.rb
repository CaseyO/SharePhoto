class CreateUserPics < ActiveRecord::Migration
  def change
    create_table :user_pics do |t|
      t.integer :id
      t.string :title
      t.string :caption
      t.boolean :tags
      t.string :img_path
      t.datetime :date_modified

      t.timestamps
    end
  end
end
