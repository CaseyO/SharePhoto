class User < ActiveRecord::Base
  attr_accessible :id, :name, :password, :username
	#has_secure_password

  #before_save { |user| user.username = username.downcase }
	

	has_many :user_pic
	has_many :user_pref
	has_many :user_relation


	validates :name, presence: true, length: {maximum: 30}
	validates :password, presence: true, length: {minimum: 6}
  	#validates :password_confirmation, presence: true

end
