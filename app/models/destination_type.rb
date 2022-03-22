class DestinationType < ApplicationRecord
  has_many :destination_by_destnation_types
  has_many :destinations, through: :destination_by_destnation_types
end
