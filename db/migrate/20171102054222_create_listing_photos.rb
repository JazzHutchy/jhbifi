class CreateListingPhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :listing_photos do |t|
      t.references :listing, foreign_key: true
      t.string :photo_data

      t.timestamps
    end
  end
end
