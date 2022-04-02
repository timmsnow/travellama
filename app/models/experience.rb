class Experience < ApplicationRecord
  belongs_to :country

  CATEGORIES = [ 'Basics', 'Budget', 'Eating', 'Safety', 'Sleeping', 'Transportation']
end
