class Country < ApplicationRecord
  has_many :destinations
  has_many :experiences
  has_many :photo_paths
end
