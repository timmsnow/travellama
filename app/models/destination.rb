class Destination < ApplicationRecord
  belongs_to :country
  has_many :destination_by_destnation_types
  has_many :destination_types, through: :destination_by_destnation_types
end
