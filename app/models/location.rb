class Location < ApplicationRecord
	belongs_to :room, required: false
end
