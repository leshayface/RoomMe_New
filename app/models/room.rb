class Room < ApplicationRecord
	has_one :location, required: false
	has_one :about_property, required: false
	has_one :about_room, required: false
	has_one :housemate, required: false
	belongs_to :user
	has_and_belongs_to_many :house_rules
	has_and_belongs_to_many :room_amenities
	has_many :room_images, :dependent => :destroy

	accepts_nested_attributes_for :location, :about_property, :about_room, :housemate, :house_rules, :room_amenities, :room_images, allow_destroy: true
end
