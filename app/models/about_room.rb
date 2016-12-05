class AboutRoom < ApplicationRecord
	
	enum room_type: [:single , :double, :shared]
	enum furnished: [:furnished , :unfurnished, :semifurnished]

	belongs_to :room, required: false, :dependent => :destroy
end
