class User < ApplicationRecord
  has_many :posts

  has_many :favorites
  has_many :favposts, through: :favorites, source: :post

  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true

end
