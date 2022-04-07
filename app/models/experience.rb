class Experience < ApplicationRecord
  belongs_to :country
  has_many :posts

  CATEGORIES = [ 'Basics', 'Budget', 'Eating', 'Safety', 'Sleeping', 'Transportation']
end
