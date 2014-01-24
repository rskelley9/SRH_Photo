class CreatePurchasedPictures < ActiveRecord::Migration
  def change
    create_table :purchased_pictures do |t|
      t.integer :purchase_id
      t.integer :picture_id
      t.boolean :order_fulfilled?
      t.boolean :paid?
      t.boolean :confirmation_email?
      t.timestamp :send_date

      t.timestamps
    end
  end
end
