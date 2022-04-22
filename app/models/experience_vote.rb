class ExperienceVote < ApplicationRecord
  belongs_to :experience

  as_enum :vote, no_vote: 0, up_vote: 1, down_vote: 2
end
