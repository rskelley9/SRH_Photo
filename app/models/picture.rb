class Picture < ActiveRecord::Base

  has_many :purchased_pictures
  has_many :gallery_pictures
end
