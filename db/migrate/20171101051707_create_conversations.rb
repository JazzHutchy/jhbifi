class CreateConversations < ActiveRecord::Migration[5.1]
  def change
    create_table :conversations do |t|
      t.references :buyer_id, foreign_key: true
      t.references :seller_id, foreign_key: true
      t.references :listing_id, foreign_key: true

      t.timestamps
    end
  end
end
