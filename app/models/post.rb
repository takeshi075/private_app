class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :repetition
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :weight
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :set_count
  
  mount_uploader :image, ImageUploader
  
end

