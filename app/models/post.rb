class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :menu1, dependent: :destroy
  has_many :menu2, dependent: :destroy

  mount_uploader :image, ImageUploader
  
end

