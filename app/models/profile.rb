class Profile < ApplicationRecord
  belongs_to :user
  has_one :profile_photo, dependent: :destroy    
  accepts_nested_attributes_for :profile_photo
end
