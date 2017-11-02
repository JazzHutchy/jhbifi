class ProfilePhoto < ApplicationRecord
  include ImageUploader[:photo]
  
  belongs_to :profile
end
