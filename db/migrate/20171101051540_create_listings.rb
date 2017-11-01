class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.references :user, foreign_key: true
      t.text :title
      t.text :description
      t.date :list_date
      t.integer :price
      t.string :charge_identifier

      t.timestamps
    end
  end
end
