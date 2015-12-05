class Teacher < ActiveRecord::Base

	belongs_to :user
	has_and_belongs_to_many :departments
	has_and_belongs_to_many :disciplines

	validates :lname, presence: true
	validates :fname, presence: true
	validates :birth, presence: true
	validates :degree, presence: true
	validates :rank, presence: true
	validates :post, presence: true
end
