class Sneaker < ActiveRecord::Base
  has_many :comments
  mount_uploader :picture, PictureUploader
  attr_accessible :description, :designer, :name, :picture
end
