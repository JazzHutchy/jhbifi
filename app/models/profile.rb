class Profile < ApplicationRecord
  belongs_to :user
  has_many :profile_photos, dependent: :destroy    
  accepts_nested_attributes_for :profile_photos
end
