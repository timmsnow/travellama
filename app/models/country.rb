class Country < ApplicationRecord
  has_many :destinations
  has_many :photo_paths
end
