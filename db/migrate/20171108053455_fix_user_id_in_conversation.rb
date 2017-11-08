class FixUserIdInConversation < ActiveRecord::Migration[5.1]
  def change
    rename_column :conversations, :user_id, :buyer_id
    add_column :conversations, :seller_id, :integer
  end
end
