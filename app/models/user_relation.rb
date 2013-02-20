class UserRelation < ActiveRecord::Base
  attr_accessible :enum, :relation_id, :user_id

	belongs_to :user
	 
end
