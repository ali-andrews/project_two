class AddPhotoUrlToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :photo_url, :text
    mount_uploader :photo_url, ImageUploader
  end
end
