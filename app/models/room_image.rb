class RoomImage < ApplicationRecord
	belongs_to :room, validate: false
	has_attached_file :photo, :styles => { small: "100x100", med: "250x250", large: "500x500" }
	validates_attachment_presence :photo
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
	validates_attachment_size :photo, :less_than => 5.megabytes
end
