class Location < ApplicationRecord
	belongs_to :room, required: false, :dependent => :destroy
end
