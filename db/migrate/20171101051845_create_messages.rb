class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.references :conversation_id, foreign_key: true
      t.references :buyer_id, foreign_key: true
      t.references :seller, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
