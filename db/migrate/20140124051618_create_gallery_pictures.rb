class CreateGalleryPictures < ActiveRecord::Migration
  def change
    create_table :gallery_pictures do |t|
      t.integer :pictured_id
      t.integer :gallery_id

      t.timestamps
    end
  end
end
