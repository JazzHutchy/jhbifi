class Message < ApplicationRecord
  belongs_to :conversation_id
  belongs_to :buyer_id
  belongs_to :seller
end
