class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  mount_uploader :image, ImageUploader

  validates :memo, presence: true
  validates :menu1, presence: true
  
end

