class Comment < ApplicationRecord
  validates :body, length: { minimum: 3 }

  belongs_to :user
  belongs_to :post
end
