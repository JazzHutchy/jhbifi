class CreateProfilePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :profile_photos do |t|
      t.references :profile, foreign_key: true
      t.string :photo_data

      t.timestamps
    end
  end
end
