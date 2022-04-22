class ExperienceVoteSerializer < ActiveModel::Serializer
  attributes :id, :experience_id, :vote_cd
  belongs_to :experience
end
