class User < ActiveRecord::Base

	has_many :documents

	validates :login, presence: true, :length => {:maximum => 32}, uniqueness: true
	validates :password, presence: true
end
