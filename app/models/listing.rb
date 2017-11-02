class Listing < ApplicationRecord
  belongs_to :user
  has_many :listing_photos, dependent: :destroy    
  accepts_nested_attributes_for :listing_photos
end
