class ExperienceSerializer < ActiveModel::Serializer
  attributes :id, :name, :country_id, :category
  has_many :posts
  has_many :photo_paths
  has_many :experience_votes
end
