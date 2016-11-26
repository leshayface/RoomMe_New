class Room < ApplicationRecord
	has_one :location, required: false
	belongs_to :user
	has_and_belongs_to_many :house_rules

	accepts_nested_attributes_for :location, allow_destroy: true
end
