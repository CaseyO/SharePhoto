class UserPic < ActiveRecord::Base
  attr_accessible :caption, :date_modified, :id, :img_path, :tags, :title

	belongs_to :user 
	

end
