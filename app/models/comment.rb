class Comment < ApplicationRecord
  validates :content, presence: true, length: { maximum: 100,
    too_long: '100 characters in post is the maximum allowed.' }
  belongs_to :user
  belongs_to :post
end
