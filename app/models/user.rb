class User < ApplicationRecord
  has_one :profile, dependent: :destroy
  mount_uploader :image, ImageUploader

  validates :username,presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
  validates :password, presence: true, length: {minimum: 7},format: {with: /\A[a-z0-9]+\z/i}
end
