class DestinationByDestinationType < ApplicationRecord
  belongs_to :destination
  belongs_to :destination_type
end
