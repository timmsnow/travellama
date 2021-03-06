class Post < ApplicationRecord
  has_many :photo_paths
  has_many :post_tags
  has_many :tags, through: :post_tags
  belongs_to :experience
  belongs_to :user
end
