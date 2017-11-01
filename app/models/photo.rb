class Photo < ApplicationRecord
  belongs_to :listing_id
  belongs_to :profile_id
end
