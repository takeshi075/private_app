class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  mount_uploader :image, ImageUploader
  

  validates :name , presence: true
  validates :introduction, length: { maximum: 200 }
  validates :password, presence: true, length: {minimum: 6},format: {with: /\A[a-z0-9]+\z/i}
  validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
end

