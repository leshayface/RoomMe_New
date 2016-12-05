class Room < ApplicationRecord
	has_one :location, required: false, :dependent => :destroy
	has_one :about_property, required: false, :dependent => :destroy
	has_one :about_room, required: false, :dependent => :destroy
	has_one :housemate, required: false, :dependent => :destroy
	belongs_to :user
	has_and_belongs_to_many :house_rules, :dependent => :destroy
	has_and_belongs_to_many :room_amenities, :dependent => :destroy
	has_many :room_images, validate: false, :dependent => :destroy

	accepts_nested_attributes_for :location, :about_property, :about_room, :housemate, :house_rules, :room_amenities, :room_images, allow_destroy: true
end
