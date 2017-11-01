class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.references :buyer_id, foreign_key: true
      t.references :seller_id, foreign_key: true
      t.integer :rating
      t.text :content

      t.timestamps
    end
  end
end
