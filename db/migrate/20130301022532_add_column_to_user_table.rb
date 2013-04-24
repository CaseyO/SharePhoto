class AddColumnToUserTable < ActiveRecord::Migration
 
	def self.up
		add_column :Users, :password_confirmation, :string
	end
end
