class Asset < ActiveRecord::Base
	belongs_to :album
	has_attached_file :asset, :styles => {:large => "640x480", :medium => "300x300>", :thumb => "100x100>" }
  	#attr_accessible :album_id, :asset_content_type, :asset_file_name, :asset_file_size, :asset_updated_at
end
