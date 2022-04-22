class PhotoPath < ApplicationRecord
  belongs_to :country
  belongs_to :post
  belongs_to :experience
end
