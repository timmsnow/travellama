class Experience < ApplicationRecord
  belongs_to :country
  has_many :posts
  has_many :photo_paths
  has_many :experience_votes

  CATEGORIES = [ 'Basics', 'Budget', 'Eating', 'Safety', 'Sleeping', 'Transportation']

  def top_rated(country_id)
    require 'pry';binding.pry
    upvotes = Experience.where(country_id: country_id).joins(:experience_votes).where('experience_votes.vote_cd = 1').group(:id).count
    downvotes = Experience.where(country_id: country_id).joins(:experience_votes).where('experience_votes.vote_cd = 2').group(:id).count
  end
end
