class PhotoPathSerializer < ActiveModel::Serializer
  attributes :id, :name, :country_id, :experience_id, :post_id
end
