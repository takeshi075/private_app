class Post < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader
  default_scope -> { order(created_at: :desc) }

  validates :memo, presence: true
  validates :menu1, presence: true
  
end

