json.extract! review, :id, :buyer_id_id, :seller_id_id, :rating, :content, :created_at, :updated_at
json.url review_url(review, format: :json)
