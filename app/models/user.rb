class User < ActiveRecord::Base
  attr_accessible :id, :name, :password, :username, :password_confirmation, :albums_attributes
	has_secure_password

 #before_save { |user| user.username = username.downcase }
	

	has_many :user_pic
	has_many :user_pref
	has_many :user_relation
	has_many :albums

	accepts_nested_attributes_for :albums, :allow_destroy => true

	validates_uniqueness_of :username
	validates_presence_of :password, :on => :create

	validates :name, presence: true, length: {maximum: 30}
	validates :password, presence: true, length: {minimum: 6}
  #	validates :password_confirmation, presence: true

end
