class PostSerializer < ActiveModel::Serializer
  attributes :id, :experience_id, :body, :is_system
end
