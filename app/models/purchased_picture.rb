class PurchasedPicture < ActiveRecord::Base

  belongs_to :picture
  belongs_to :purchase
end
