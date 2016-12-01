class AddAttachmentPhotoToRoomImages < ActiveRecord::Migration
  def self.up
    change_table :room_images do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :room_images, :photo
  end
end
