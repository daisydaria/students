class Department < ActiveRecord::Base
	has_many :groups
	has_and_belongs_to_many :teachers

	validates :num, presence: true, :length => {:maximum => 5}, uniqueness: true
	validates :title, presence: true
end
