class PostSerializer < ActiveModel::Serializer
  attributes :id, :experience_id, :body, :is_system, :user_id
  belongs_to :user
end
