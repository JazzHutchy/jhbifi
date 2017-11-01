class Conversation < ApplicationRecord
  belongs_to :buyer_id
  belongs_to :seller_id
  belongs_to :listing_id
end
