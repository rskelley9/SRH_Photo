class Purchase < ActiveRecord::Base

  belongs_to :user
  has_many :purchased_pictures
end
