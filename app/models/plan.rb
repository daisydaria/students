class Plan < ActiveRecord::Base

	belongs_to :specialty
	has_many :disciplines

	validates :form, presence: true
	validates :period, presence: true
end
