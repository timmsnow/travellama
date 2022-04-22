class Experience < ApplicationRecord
  belongs_to :country
  has_many :posts
  has_many :photo_paths
  has_many :experience_votes

  CATEGORIES = [ 'Basics', 'Budget', 'Eating', 'Safety', 'Sleeping', 'Transportation']

end
