class Review < ApplicationRecord
  belongs_to :buyer_id
  belongs_to :seller_id
end
