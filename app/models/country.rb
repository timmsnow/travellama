class Country < ApplicationRecord
  has_many :destinations
  has_many :experiences
  has_many :photo_paths

  # scope :top_rated_experiences, ->(id) { where(id: id) }

  def self.top_rated_experiences(id)
    upvotes = Experience.where(country_id: id).joins(:experience_votes).where('experience_votes.vote_cd = 1').group(:id).count
    downvotes = Experience.where(country_id: id).joins(:experience_votes).where('experience_votes.vote_cd = 2').group(:id).count
    downvotes = downvotes.each { |k, v| downvotes[k] = v * -1 }
    votes = upvotes.merge(downvotes) {|key,val1,val2| val1+val2}
    sorted_votes = votes.sort_by {|k, v| -v}
    top5_ids = sorted_votes.to_h.keys.first(5)
    top5 = Experience.where(id: top5_ids)
  end
end
