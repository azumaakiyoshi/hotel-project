class Hotel < ApplicationRecord
mount_uploader :picture, PictureUploader
  has_many :reviews
  has_many :reservations
  belongs_to :prefecture
end
