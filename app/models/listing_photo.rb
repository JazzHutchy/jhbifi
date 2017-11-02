class ListingPhoto < ApplicationRecord
  include ImageUploader[:photo]

  belongs_to :listing
end
