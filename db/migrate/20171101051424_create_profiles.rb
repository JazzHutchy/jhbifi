class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :phone_number
      t.text :address
      t.string :city
      t.string :state
      t.string :country_code
      t.string :avatar

      t.timestamps
    end
  end
end
