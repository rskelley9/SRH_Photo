class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :user_id
      t.text :billing_address
      t.string :billing_zip
      t.string :purchase_email
      t.string :purchase_phone

      t.timestamps
    end
  end
end
