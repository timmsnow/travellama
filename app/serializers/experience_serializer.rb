class ExperienceSerializer < ActiveModel::Serializer
  attributes :id, :name, :country_id, :category
  has_many :posts
end
