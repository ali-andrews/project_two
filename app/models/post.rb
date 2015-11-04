class Post < ActiveRecord::Base
  belongs_to :user
  mount_uploader :photo, ImageUploader
  geocoded_by :location
  after_validation :geocode 
end
