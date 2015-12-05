class Discipline < ActiveRecord::Base
	belongs_to :plan
	has_and_belongs_to_many :students
	has_and_belongs_to_many :teachers

	validates :title, presence: true
	validates :type, presence: true
end
