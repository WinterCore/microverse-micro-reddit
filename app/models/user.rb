class User < ApplicationRecord
  devise :database_authenticatable, :timeoutable, :registerable, :recoverable

  validates :username, :email, :password, presence: true
  validates :email, uniqueness: true
  validates :username, length: { minimum: 3 }
  validates :password, length: { minimum: 6 }

  has_many :posts
  has_many :comments
end
