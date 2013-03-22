class AddColumnToUserTable < ActiveRecord::Migration
 
	def self.up
		add_column :User, :password_confirmation, :string
	end
end
