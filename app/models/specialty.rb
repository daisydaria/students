class Specialty < ActiveRecord::Base
		has_many :plans

		validates :code, presence: true, :length => {:maximum => 10}, uniqueness: true
		validates :gen, presence: true
		validates :title, presence: true
		validates :level, presence: true
end
