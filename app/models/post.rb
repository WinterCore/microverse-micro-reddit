class Post < ApplicationRecord
  validates :title, :body, presence: true, length: { minimum: 3 }

  belongs_to :user
  has_many :comments
end
