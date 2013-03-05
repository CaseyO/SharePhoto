class Album < ActiveRecord::Base
  attr_accessible :album_description, :album_name, :user_id, :assets_attributes
  belongs_to :user 
  has_many :assets 
  accepts_nested_attributes_for :assets, :allow_destroy => true

end
