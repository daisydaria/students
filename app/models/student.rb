class Student < ActiveRecord::Base
	belongs_to :group
	belongs_to :plan
	has_and_belongs_to_many :disciplines
    belongs_to :user

    validates :l_n, presence: true
    validates :f_n, presence: true
    validates :birth, presence: true
    validates :studbook, presence: true, uniqueness: true
end
