class UpdateUser < ActiveRecord::Migration
  def up
  	add_column :Users, :password_digest, :string
  end

  def down
  end
end
