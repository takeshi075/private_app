class Post < ApplicationRecord
  belongs_to :user
  has_many :coments
  mount_uploader :image, ImageUploader

  validates :memo, presence: true
  validates :menu1, presence: true
  
end

