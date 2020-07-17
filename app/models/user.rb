class User < ApplicationRecord
  devise :database_authenticatable, :timeoutable, :registerable

  validates :username, :email, :password, presence: true
  validates :email, uniqueness: true
  validates :username, length: { minimum: 3 }
  validates :password, length: { minimum: 6 }

  has_many :posts
end
