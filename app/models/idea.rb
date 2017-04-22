class Idea < ApplicationRecord
  mount_uploader :picture, PictureUploader
  has_many :ratings
end
