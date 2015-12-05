class Document < ActiveRecord::Base
  has_attached_file :image

  belongs_to :user

  validates :text, presence: true
end
